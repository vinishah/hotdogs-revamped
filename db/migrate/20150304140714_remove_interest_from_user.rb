class RemoveInterestFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :interest, :string
  end
end
