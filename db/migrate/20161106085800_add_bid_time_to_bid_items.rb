class AddBidTimeToBidItems < ActiveRecord::Migration[5.0]
  def change
  	add_column :bid_items, :bid_time, :integer
  end
end
