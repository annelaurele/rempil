class AddGeneralToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :mobile, :string
    add_column :users, :image_url, :string
    add_column :users, :status, :integer
  end
end
