class BidItem < ApplicationRecord
  #searchkick
	validates :item_name, :starting_price, :fixed_price, :presence => true
	# I don't know why I can't make bid_time to presence
	# validates :bid_time, :presence => true

	has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, storage: :s3
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

	belongs_to :seller, class_name: "User", foreign_key: "seller_id"
	has_many :bid_records
	# belongs_to :buyer, class_name: "User", foreign_key: "buyer_id"
end
