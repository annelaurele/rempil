class DropSelectionRentals2 < ActiveRecord::Migration[6.0]
  def change
    drop_table :selection_rentals
  end
end
