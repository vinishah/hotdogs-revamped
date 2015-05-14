class AddNameAndDescriptionToPlaydates < ActiveRecord::Migration
  def change
    add_column :playdates, :name, :string
    add_column :playdates, :description, :string
  end
end
