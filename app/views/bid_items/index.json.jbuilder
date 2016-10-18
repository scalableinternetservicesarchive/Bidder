<<<<<<< HEAD
json.array! @bid_items, partial: 'bid_items/bid_item', as: :bid_item
=======
json.array!(@bid_items) do |bid_item|
  json.extract! bid_item, :id, :name, :price, :saler_id, :bidder_id, :description
  json.url bid_item_url(bid_item, format: :json)
end
>>>>>>> 5a9fa76ff5c2e2b1196661b93e8303b0d7ada712
