module UsersHelper
	def cache_key_for_user_show_sell_table(user)
		"user-show-sell-table-#{user.sell_items.maximum(:updated_at)}"
	end

  def cache_key_for_user_show_bid_table(bid_records)
    "user-show-sell-table-#{bid_records.maximum(:updated_at)}"
  end

  def cache_key_for_user_show_buy_table(user)
    "user-show-sell-table-#{user.buy_items.maximum(:updated_at)}"
  end
end
