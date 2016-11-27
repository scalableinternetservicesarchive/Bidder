module CommunitiesHelper
	def cache_key_for_community_index_table
		"community-index-table-#{Community.count}-#{Community.maximum(:id)}"
	end

  def cache_key_for_community_show_user_table(community)
    "community-show-user-table-#{community.id}-#{community.user_communities.maximum(:id)}"
  end

  def cache_key_for_community_show_item_table(items) 
    "community-show-item-table-#{items.maximum(:id)}"
  end

  
end
