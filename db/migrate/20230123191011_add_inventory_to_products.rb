class AddInventoryToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :inventory, :integer
    change_column :products, :description, :text
    change_column :products, :price, :decimal, precision: 9, scale: 2
  end
end
