class Search < ApplicationRecord
  def products
  	@products ||= find_products
  end	

  private

  def find_products
    products = BidItem.none
    if category_id.present?
      community = Community.find(category_id) 
      users = []
      community.user_communities.each do |uc|
        users << uc
      end

      items_in_community = BidItem.where(seller_id: users)

      products = items_in_community.where("item_name like ?", "%#{keywords}%") if keywords.present?
      products = products.or(products)
    else
      products = BidItem.where("item_name like ?", "%#{keywords}%")
    end
    
  end
end
