json.extract! bid_item, :id, :name, :description, :price, :created_at, :updated_at
json.url bid_item_url(bid_item, format: :json)