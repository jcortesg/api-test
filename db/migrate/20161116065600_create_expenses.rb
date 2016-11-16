class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.float      :values, null: false
      t.belongs_to :trip,   null: false

      t.timestamps
    end
  end
end
