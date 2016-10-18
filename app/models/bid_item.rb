class BidItem < ApplicationRecord
  searchkick
  belongs_to :user
end
