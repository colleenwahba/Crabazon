class CreateOrderProducts < ActiveRecord::Migration
  def change
    create_table :order_products do |t|
    	t.integer :order_id 
    	t.integer :product_id
    	t.integer :quantity, default: 1 
    	t.decimal :total
    end
  end
end
