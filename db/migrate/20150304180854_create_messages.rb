class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :user_match_id
      t.string :content

      t.timestamps null: false
    end
  end
end
