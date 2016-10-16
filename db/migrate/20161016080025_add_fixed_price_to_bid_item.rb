class AddFixedPriceToBidItem < ActiveRecord::Migration[5.0]
  def change
  	add_column :bid_items, :fixed_price, :integer
  end
end
