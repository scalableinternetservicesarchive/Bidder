module BidItemsHelper
  def cache_key_for_biditem_table
    "bid_item-table-#{BidItem.maximum(:updated_at)}"
  end

  def cache_key_for_biditem_row(bid_item)
    "bid_item-#{bid_item.id}-#{bid_item.updated_at}"
  end
end
