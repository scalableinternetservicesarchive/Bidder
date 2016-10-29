class FixHighestPriceColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :bid_items, :highest_price, :current_price
  	rename_column :bid_items, :highest_price_bidder_id, :current_bidder_id
  	add_column :bid_items, :buyer_id, :integer
  end
end
