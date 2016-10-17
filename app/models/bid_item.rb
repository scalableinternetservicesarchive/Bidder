class BidItem < ApplicationRecord
	validates :item_name, :presence => true
end
