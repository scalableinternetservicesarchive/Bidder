class AddBidderIdToBidItems < ActiveRecord::Migration[5.0]
  def change
    add_column :bid_items, :bidder_id, :integer
  end
end
