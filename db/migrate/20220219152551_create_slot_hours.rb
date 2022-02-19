class CreateSlotHours < ActiveRecord::Migration[6.0]
  def change
    create_table :slot_hours do |t|
      t.integer :opening_hour
      t.integer :closing_hour
      t.string :day_of_the_week
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
