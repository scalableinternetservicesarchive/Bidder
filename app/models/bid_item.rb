class BidItem < ApplicationRecord
  searchkick
  belongs_to :user
	validates :item_name, :presence => true
end
