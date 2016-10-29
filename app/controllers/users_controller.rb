class UsersController < ApplicationController
  def show
  	# debugger
  	# @user = User.find(params[:id])
  	@bid_records = BidRecord.where(user_id: current_user).order("created_at DESC")  		
  end
end
