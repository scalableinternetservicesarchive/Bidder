class AddIndexes < ActiveRecord::Migration[5.0]
  def change
  	add_index :bid_items, :updated_at
  	add_index :bid_items, :seller_id
  	add_index :bid_items, :buyer_id
  	add_index :bid_items, :current_price
  end
end
