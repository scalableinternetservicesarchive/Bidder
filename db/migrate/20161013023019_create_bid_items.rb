class CreateBidItems < ActiveRecord::Migration[5.0]
  def change
    create_table :bid_items do |t|
      t.string :name
      t.integer :price
      t.integer :saler_id
      t.integer :bidder_id
      t.string :description

      t.timestamps
    end
  end
end
