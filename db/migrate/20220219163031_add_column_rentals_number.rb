class AddColumnRentalsNumber < ActiveRecord::Migration[6.0]
  def change
    add_column :rentals, :number_box, :integer
    add_column :rentals, :max_capacity, :integer
  end
end
