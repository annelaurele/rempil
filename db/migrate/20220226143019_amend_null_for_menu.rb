class AmendNullForMenu < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:menus, :rental_id, true)
  end
end
