class CreateMatches < ActiveRecord::Migration
  def change
    create_table :user_matches do |t|
      t.integer "dog_requester_id", :null => false
      t.integer "dog_requestee_id", :null => false
      t.timestamps null: false
    end
  end
end
