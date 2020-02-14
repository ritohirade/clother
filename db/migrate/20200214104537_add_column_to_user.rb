class AddColumnToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :self_introduction, :string, limit: 500
    add_column :users, :sex, :integer, null: false, default: 0
    add_column :users, :img_name, :string
  end
end
