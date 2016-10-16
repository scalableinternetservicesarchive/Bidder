class BidItemsController < ApplicationController
  before_action :set_bid_item, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  # GET /bid_items
  # GET /bid_items.json
  def index
    @bid_items = BidItem.all
  end

  # GET /bid_items/1
  # GET /bid_items/1.json
  def show
  end

  # GET /bid_items/new
  def new
    @bid_item = current_user.bid_items.build
  end

  # GET /bid_items/1/edit
  def edit
  end

  # POST /bid_items
  # POST /bid_items.json
  def create
    @bid_item = current_user.bid_items.build(bid_item_params)
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
    respond_to do |format|
      if @bid_item.update(bid_item_params)
        format.html { redirect_to @bid_item, notice: 'Bid item was successfully updated.' }
        format.json { render :show, status: :ok, location: @bid_item }
      else
        format.html { render :edit }
        format.json { render json: @bid_item.errors, status: :unprocessable_entity }
      end
    end
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
      params.require(:bid_item).permit(:name, :price, :description)
    end
end
