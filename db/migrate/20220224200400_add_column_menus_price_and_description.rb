class AddColumnMenusPriceAndDescription < ActiveRecord::Migration[6.0]
  def change
    add_column :menus, :price, :integer
    add_column :menus, :description, :string
  end
end
