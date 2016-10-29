class BidRecord < ApplicationRecord
  belongs_to :user
  belongs_to :bid_item
end
