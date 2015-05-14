class User < ActiveRecord::Base
  # DEVISE #
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]

  # GRAVATASTIC #
  include Gravtastic
  gravtastic :default => "wavatar", :size => 400

  # MOUNTING UPLOADER
  mount_uploader :dog_picture, UserImageUploader
  mount_uploader :owner_picture, UserImageUploader
  # mount_uploader :avatar, AvatarUploader

  # ASSOCIATIONS #
  has_and_belongs_to_many :events
  has_many :reviews, dependent: :destroy
  has_and_belongs_to_many :playdates, dependent: :destroy
  has_many :user_matches, :foreign_key => :dog_requester_id
  has_many :users, :through => :user_matches, :source => :dog_requestee
  has_many(:user_matches, :foreign_key => :dog_requester_id, :dependent => :destroy)
  has_many(:reverse_user_matches, :class_name => :UserMatch, :foreign_key => :dog_requestee_id, :dependent => :destroy)

  # has_many :users, :through => :user_matches, :source => :dog_requestee

  has_many :messages, through: :user_matches 

  # TAGGABLE #

  acts_as_taggable
  acts_as_taggable_on :preferences

  # OMNIAUTH #

  # RATABLE #
  letsrate_rater
  letsrate_rateable "user_rating"

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.owner_name = auth.info.name   # assuming the user model has a name
      user.owner_picture = auth.info.image # assuming the user model has an image
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end
end
