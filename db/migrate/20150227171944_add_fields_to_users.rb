class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :dog_name, :string
    add_column :users, :owner_name, :string
    add_column :users, :dog_age, :integer
    add_column :users, :picture, :string
    add_column :users, :dog_bio, :text
    add_column :users, :owner_bio, :text
    add_column :users, :gender, :string
    add_column :users, :breed, :string
    add_column :users, :neutered, :boolean
    add_column :users, :address, :string
    add_column :users, :reported, :boolean
    add_column :users, :interest, :string
    add_column :users, :user_rating, :integer
  end
end
