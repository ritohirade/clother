class AddProductImageIdToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :product_image_id, :string
  end
end
