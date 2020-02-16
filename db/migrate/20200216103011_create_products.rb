class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :brand_id
      t.string :product_name
      t.string :product_image
      t.integer :price

      t.timestamps
    end
  end
end
