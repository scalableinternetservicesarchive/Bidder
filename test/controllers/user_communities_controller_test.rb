require 'test_helper'

class UserCommunitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_community = user_communities(:one)
  end

  test "should get index" do
    get user_communities_url
    assert_response :success
  end

  test "should get new" do
    get new_user_community_url
    assert_response :success
  end

  test "should create user_community" do
    assert_difference('UserCommunity.count') do
      post user_communities_url, params: { user_community: { community_id: @user_community.community_id, user_id: @user_community.user_id } }
    end

    assert_redirected_to user_community_url(UserCommunity.last)
  end

  test "should show user_community" do
    get user_community_url(@user_community)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_community_url(@user_community)
    assert_response :success
  end

  test "should update user_community" do
    patch user_community_url(@user_community), params: { user_community: { community_id: @user_community.community_id, user_id: @user_community.user_id } }
    assert_redirected_to user_community_url(@user_community)
  end

  test "should destroy user_community" do
    assert_difference('UserCommunity.count', -1) do
      delete user_community_url(@user_community)
    end

    assert_redirected_to user_communities_url
  end
end
