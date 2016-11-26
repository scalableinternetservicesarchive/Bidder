class UsersController < ApplicationController
  def show
  	@bid_records = BidRecord.where(user_id: current_user).order("created_at DESC")
  end
end
