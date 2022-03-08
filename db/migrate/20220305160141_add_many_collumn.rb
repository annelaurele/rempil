class AddManyCollumn < ActiveRecord::Migration[6.0]
  def change
    add_reference :selection_rentals, :menu, foreign_key: true
    add_reference :selection_rentals, :rental, foreign_key: true
    add_column :selection_rentals, total_of_box: :integer
  end
end
