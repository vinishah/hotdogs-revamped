class AddOrganizerToUsers < ActiveRecord::Migration
  def change
    add_column :users, :organizer_id, :integer
  end
end
