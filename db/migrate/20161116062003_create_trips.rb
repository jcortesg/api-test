class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.date   :date,     null: false
      t.string :name,     null: false
      t.string :place,    null: false
      t.references :user, null: false

      t.timestamps
    end
    add_index :trips, :date
    add_index :trips, :place
  end
end
