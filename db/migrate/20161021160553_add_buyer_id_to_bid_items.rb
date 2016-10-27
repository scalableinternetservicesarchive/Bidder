class AddBuyerIdToBidItems < ActiveRecord::Migration[5.0]
  def change
    add_column :bid_items, :buyer_id, :integer
  end
end
