module SearchesHelper
	def cache_key_for_search_show_table(search)
		"search-show-table-#{search.keywords}-#{search.category_id}-#{search.min_price}-#{search.max_price}"
	end
end
