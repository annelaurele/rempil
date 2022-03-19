class AddUserToSelection < ActiveRecord::Migration[6.0]
  def change
    add_reference :selection_rentals, :user, null: false, foreign_key: true
  end
end
