class CreatePlaydatesUsers < ActiveRecord::Migration
  def change
    create_table :playdates_users do |t|
      t.belongs_to :playdate, index: true
      t.belongs_to :user, index: true
    end
  end
end
