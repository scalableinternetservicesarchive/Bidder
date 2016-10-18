<<<<<<< HEAD
json.partial! "bid_items/bid_item", bid_item: @bid_item
=======
json.extract! @bid_item, :id, :name, :price, :saler_id, :bidder_id, :description, :created_at, :updated_at
>>>>>>> 5a9fa76ff5c2e2b1196661b93e8303b0d7ada712
