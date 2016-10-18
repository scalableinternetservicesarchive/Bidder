class BidItem < ApplicationRecord
<<<<<<< HEAD
	belongs_to :user

	has_attached_file :image, styles: { medium: "400x600>" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
=======
	validates :item_name, :presence => true
>>>>>>> 5a9fa76ff5c2e2b1196661b93e8303b0d7ada712
end
