module UsersHelper
	def cache_key_for_user_show_sell_table(user)
		"user-show-sell-table-#{user.id}-#{user.sell_items.maximum(:updated_at)}"
	end

  def cache_key_for_user_show_bid_table(user)
    "user-show-bid-table-#{user.id}-#{user.bid_records.maximum(:id)}"
  end

  def cache_key_for_user_show_buy_table(user)
    "user-show-buy-table-#{user.id}-#{user.buy_items.maximum(:updated_at)}"
  end
end