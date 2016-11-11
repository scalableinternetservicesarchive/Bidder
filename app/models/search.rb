class Search < ApplicationRecord
  def products
  	@products ||= find_products
  end	

  private

  def find_products
    products = BidItem.where("item_name like ?", "%#{keywords}%") if keywords.present?

    # products = []
    
    # if category_id.present?
    #   community = Community.where(id: category_id) 
    #   users=[]
    #   community.first.user_communities.each do |uc|
    #     users << User.find(uc.user_id)
    #   end

    #   users.each do |user|
    #     item = BidItem.where(:seller_id => user.id)
    #     item.each do |item|
    #       products << item
    #     end
    #   end
    # end 

    products
  end
end
