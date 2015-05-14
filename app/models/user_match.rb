class UserMatch < ActiveRecord::Base
  belongs_to :dog_requester, :class_name => :User
  belongs_to :dog_requestee, :class_name => :User
  has_many :messages
end
