class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.text :image
      t.decimal :price, precision: 12, scale: 3
      t.boolean :active
      t.references :product_group, foreign_key: true

      t.timestamps
    end
  end
end
