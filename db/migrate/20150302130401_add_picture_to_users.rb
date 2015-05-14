class AddPictureToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dog_picture, :string
    add_column :users, :owner_picture, :string
  end
end
