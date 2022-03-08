class AddQuantitySelectionRentals < ActiveRecord::Migration[6.0]
  def change
    add_column :selection_rentals, :quantity, :integer
  end
end
