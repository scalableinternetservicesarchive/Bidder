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
		respond_to do |format|
			if @bid_record.price < @bid_item.current_price
				format.html {redirect_to @bid_item, notice: 'Your price must be greater than current price.' }
			else
				if @bid_record.save
					@bid_item.update(current_price: @bid_record.price, current_bidder_id: @current_user.id)
					format.html {redirect_to @bid_item, notice: 'Bid item was successfully created.' }

					@bid_item.update(buyer_id: current_user.id) if @bid_record.price >= @bid_item.fixed_price
				end
			end
		end
		
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
