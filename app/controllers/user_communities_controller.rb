class UserCommunitiesController < ApplicationController
  before_action :set_user_community, only: [:show, :edit, :update, :destroy]

  # GET /user_communities
  # GET /user_communities.json
  def index
    @user_communities = UserCommunity.all
  end

  # GET /user_communities/1
  # GET /user_communities/1.json
  def show
  end

  # GET /user_communities/new
  def new
    @user_community = UserCommunity.new
  end

  # GET /user_communities/1/edit
  def edit
  end

  # POST /user_communities
  # POST /user_communities.json
  def create
    set_community
    @user_community = UserCommunity.new(:community_id =>@community.id, :user_id => current_user.id)

    respond_to do |format|
      if @user_community.save
        format.html { redirect_to @user_community, notice: 'User community was successfully created.' }
        format.json { render :show, status: :created, location: @user_community }
      else
        format.html { render :new }
        format.json { render json: @user_community.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_communities/1
  # PATCH/PUT /user_communities/1.json
  def update
    respond_to do |format|
      if @user_community.update(user_community_params)
        format.html { redirect_to @user_community, notice: 'User community was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_community }
      else
        format.html { render :edit }
        format.json { render json: @user_community.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_communities/1
  # DELETE /user_communities/1.json
  def destroy
    @user_community.destroy
    respond_to do |format|
      format.html { redirect_to user_communities_url, notice: 'User community was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_community
      @community = Community.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_community_params
      params.require(:user_community).permit(:community_id, :user_id)
    end
end
