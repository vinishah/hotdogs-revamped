class AddIdToTable < ActiveRecord::Migration
  def change
    add_column :playdates, :dog1_id, :integer
    add_column :playdates, :dog2_id, :integer
    add_column :reviews, :user_id, :integer
    add_column :reviews, :author_id, :integer
    add_column :events, :organizer_id, :integer
  end
end
