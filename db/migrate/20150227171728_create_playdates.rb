class CreatePlaydates < ActiveRecord::Migration
  def change
    create_table :playdates do |t|
      t.string :dog1_id
      t.string :dog2_id
      t.date :date
      t.string :place
      t.time :time

      t.timestamps null: false
    end
  end
end
