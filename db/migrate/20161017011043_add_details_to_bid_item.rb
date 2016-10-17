class AddDetailsToBidItem < ActiveRecord::Migration[5.0]
  def change
    add_column :bid_items, :highest_price, :integer
    add_column :bid_items, :highest_price_bidder_id, :integer
  end
end
