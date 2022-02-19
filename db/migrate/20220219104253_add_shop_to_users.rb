class AddShopToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :shop, :boolean
  end
end
