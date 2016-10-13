json.array!(@bid_items) do |bid_item|
  json.extract! bid_item, :id, :name, :price, :saler_id, :bidder_id, :description
  json.url bid_item_url(bid_item, format: :json)
end
