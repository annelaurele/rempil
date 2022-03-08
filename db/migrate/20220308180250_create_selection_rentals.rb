class CreateSelectionRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :selection_rentals do |t|
      t.references :rental, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
