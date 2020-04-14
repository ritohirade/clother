class CreateUserProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_products do |t|
      t.integer :user_id, null: false
      t.integer :product_id, null: false
      t.integer :status, null: false

      t.timestamps
    end
  end
end
