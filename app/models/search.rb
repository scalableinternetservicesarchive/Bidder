class Search < ApplicationRecord
  def results
    results_o = BidItem.all
    if category_id.present?
      community = Community.find(category_id) 
      users = []
      community.user_communities.each do |uc|
        users << uc
      end

      results_o = results_o.where(seller_id: users)
    end
    results_o = results_o.where("item_name like ?", "%#{keywords}%") if keywords.present?

    results_o = results_o.where("current_price >= ?", min_price) if min_price.present?
    results_o = results_o.where("current_price <= ?", max_price) if max_price.present? 

    results_o   
  end
end
