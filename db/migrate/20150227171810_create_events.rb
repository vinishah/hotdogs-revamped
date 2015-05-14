class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :place
      t.time :time
      t.integer :event_rating

      t.timestamps null: false
    end
  end
end
