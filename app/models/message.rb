class Message < ActiveRecord::Base
  belongs_to :user_match
  belongs_to :user
end
