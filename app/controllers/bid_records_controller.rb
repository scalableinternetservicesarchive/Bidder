class BidRecordsController < ApplicationController
	before_action :set_item
	before_action :authenticate_user!

	def new
		@bid_record = Bidrecord.new
	end

	def create
		@bid_record = BidRecord.new(record_params)
		@bid_record.user_id = current_user.id
		@bid_record.bid_item_id = @bid_item.id

		if @bid_record.save
			flash[:success] = "Bidding record added!"
		end
		redirect_to @bid_item
	end



	private
    def set_record
      @bid_record = BidRecord.find(params[:id])
    end

    def set_item
      @bid_item = BidItem.find(params[:bid_item_id])
    end

    def record_params
      params.require(:bid_record).permit(:price)
    end
end
