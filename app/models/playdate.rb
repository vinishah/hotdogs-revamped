class Playdate < ActiveRecord::Base
  # ASSOCIATIONS #
  has_and_belongs_to_many :users
end
