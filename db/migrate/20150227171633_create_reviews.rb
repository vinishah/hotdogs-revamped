class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :content
      t.string :user_id
      t.string :author_id

      t.timestamps null: false
    end
  end
end
