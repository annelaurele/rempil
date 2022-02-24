class AddColumnRentalsTotalBox < ActiveRecord::Migration[6.0]
  def change
    add_column :rentals, :total_of_box, :integer
  end
end
