class Event < ActiveRecord::Base
  # ASSOCIATIONS #
  has_and_belongs_to_many :users

  # VOTABLE GEM #
  acts_as_votable
end
