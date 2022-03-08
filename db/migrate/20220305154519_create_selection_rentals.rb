class CreateSelectionRentals < ActiveRecord::Migration[6.0]
  def change
    create_table :selection_rentals do |t|

      t.timestamps
    end
  end
end
