class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
  	rename_column :bid_items, :name, :item_name
  	rename_column :bid_items, :price, :starting_price
  	rename_column :bid_items, :saler_id, :seller_id
  	remove_column :bid_items, :bidder_id 
  end
end
