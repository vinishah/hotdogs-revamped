class AddStatusToUserMatch < ActiveRecord::Migration
  def change
    add_column :user_matches, :status, :string
  end
end
