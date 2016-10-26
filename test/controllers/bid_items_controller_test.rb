require 'test_helper'

class BidItemsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  setup do
    @bid_item = bid_items(:one)
  end

  test "should get index" do
    get bid_items_path
    assert_response :success
  end

  test "should get new" do
    sign_in users(:one)
    get new_bid_item_path
    assert_response :success
  end

  test "should create bid_item" do
    sign_in users(:one)
    assert_difference('BidItem.count') do
      post bid_items_path, params: { bid_item: { description: @bid_item.description, item_name: @bid_item.item_name, starting_price: @bid_item.starting_price, fixed_price: @bid_item.fixed_price, seller_id: @bid_item.seller_id } }
    end

    assert_redirected_to bid_item_path(BidItem.last)
  end

  test "should show bid_item" do
    get bid_item_path(@bid_item)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:one)
    get edit_bid_item_path(@bid_item)
    assert_response :success
  end

  test "should update bid_item" do
    sign_in users(:one)
    patch bid_item_path(@bid_item), params: { bid_item: { description: @bid_item.description, item_name: @bid_item.item_name, starting_price: @bid_item.starting_price, fixed_price: @bid_item.fixed_price, seller_id: @bid_item.seller_id } }
    assert_redirected_to bid_item_path(@bid_item)
  end

  test "should destroy bid_item" do
    sign_in users(:one)
    assert_difference('BidItem.count', -1) do
      delete bid_item_path(@bid_item)
    end

    assert_redirected_to bid_items_path
  end
end
