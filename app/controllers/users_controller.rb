class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def show
  	# debugger
  	# @user = User.find(params[:id])
  	@bid_records = BidRecord.where(user_id: current_user).order("created_at DESC")  		
  end
end
