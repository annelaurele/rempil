class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.string :description
      t.string :mobile
      t.string :email
      t.integer :category
      t.string :merchant_picture
      t.date :opening_hours
      t.decimal :average_rate
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
