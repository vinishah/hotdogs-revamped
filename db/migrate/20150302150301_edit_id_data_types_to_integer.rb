class EditIdDataTypesToInteger < ActiveRecord::Migration
  def change
    remove_column :playdates, :dog1_id
    remove_column :playdates, :dog2_id
    remove_column :reviews, :user_id
    remove_column :reviews, :author_id
    remove_column :users, :organizer_id

  end
end
