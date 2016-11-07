class BidItemsController < ApplicationController
  before_action :set_bid_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]


  # GET /bid_items
  # GET /bid_items.json

  def search
    if params[:search].present?
      # This is for the elastic search
      #@bid_items = BidItem.search(params[:search])

      # Those are Ruby SQL queries
      # This is to search item_name
      #@bid_items = BidItem.where(:item_name => params[:search])
      # This is to search price larger than
      @bid_items = BidItem.where("starting_price > ?", params[:search])
    else
      @bid_items = BidItem.all
    end
  end

  def index
    if stale?([BidItem.all, BidRecord.all, current_user])
      @bid_items = BidItem.order("created_at DESC").limit(30)
    end
  end

  # GET /bid_items/1
  # GET /bid_items/1.json
  def show
    @bid_records = @bid_item.bid_records
    fresh_when([@bid_item, @bid_records, current_user])
    # @current_user_id = current_user.id
  end

  # GET /bid_items/new
  def new
    @bid_item = BidItem.new
  end

  # GET /bid_items/1/edit
  def edit
  end

  # POST /bid_items
  # POST /bid_items.json
  def create
    @bid_item = BidItem.new(bid_item_params)
    @bid_item.seller_id = current_user.id
    @bid_item.current_price = @bid_item.starting_price
    respond_to do |format|
      if @bid_item.save
        format.html { redirect_to @bid_item, notice: 'Bid item was successfully created.' }
        format.json { render :show, status: :created, location: @bid_item }
      else
        format.html { render :new }
        format.json { render json: @bid_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bid_items/1
  # PATCH/PUT /bid_items/1.json
  def update
    @bid_item.seller_id = current_user.id
    respond_to do |format|
      if @bid_item.update(bid_item_params)
        format.html { redirect_to @bid_item, notice: 'Bid item was successfully updated.' }
        format.json { render :show, status: :updated, location: @bid_item }
      else
        format.html { render :edit }
        format.json { render json: @bid_item.errors, status: :unprocessable_entity }
      end
    end
  end


  def bid
    set_bid_item
  end


  # DELETE /bid_items/1
  # DELETE /bid_items/1.json
  def destroy
    @bid_item.destroy
    respond_to do |format|
      format.html { redirect_to bid_items_url, notice: 'Bid item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bid_item
      @bid_item = BidItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bid_item_params
      params.require(:bid_item).permit(:item_name, :starting_price, :current_price, :fixed_price, :current_bidder_id, :description, :image)
    end
end
