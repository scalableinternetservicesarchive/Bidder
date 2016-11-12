class Search < ApplicationRecord
  def products
  	@products ||= find_products
  end	

  private

  def find_products
    products = []
    if category_id.present?
      community = Community.find(category_id) 
      community.user_communities.each do |uc|
        items = BidItem.where(:seller_id => User.find(uc.user_id))
        
        if keywords.present?
          items_filter_name = items.where("item_name like ?", "%#{keywords}%") 
          if items_filter_name.any?
            items_filter_name.each do |item|
            products << item
            end
          end
        else
          items.each do |item|
            products << item
          end
        end
      end
    else
      products = BidItem.where("item_name like ?", "%#{keywords}%")
    end
    return products
  end
end
