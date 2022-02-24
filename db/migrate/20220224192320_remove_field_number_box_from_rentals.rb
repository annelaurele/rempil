class RemoveFieldNumberBoxFromRentals < ActiveRecord::Migration[6.0]
  def change
     remove_column :rentals, :number_box
  end
end
