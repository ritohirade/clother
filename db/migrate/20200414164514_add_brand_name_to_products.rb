class AddBrandNameToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :brand_name, :string
  end
end
