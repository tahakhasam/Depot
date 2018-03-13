class AddProductPriceToLineItem < ActiveRecord::Migration[5.1]
  def change
    add_column :line_items, :price, :decimal, precision: 8, scale: 2
    LineItem.all.each do |li|
    	li.price = li.product.price
    end
  end
end
