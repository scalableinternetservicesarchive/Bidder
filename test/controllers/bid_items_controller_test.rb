require 'test_helper'

class BidItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bid_item = bid_items(:one)
  end

  test "should get index" do
    get bid_items_url
    assert_response :success
  end

  test "should get new" do
    get new_bid_item_url
    assert_response :success
  end

  test "should create bid_item" do
    assert_difference('BidItem.count') do
<<<<<<< HEAD
      post bid_items_url, params: { bid_item: { bidder_id: @bid_item.bidder_id, description: @bid_item.description, name: @bid_item.name, price: @bid_item.price, saler_id: @bid_item.saler_id } }
=======
      post bid_items_url, params: { bid_item: { description: @bid_item.description, item_name: @bid_item.item_name, starting_price: @bid_item.starting_price, fixed_price: @bid_item.fixed_price, seller_id: @bid_item.seller_id } }
>>>>>>> 5a9fa76ff5c2e2b1196661b93e8303b0d7ada712
    end

    assert_redirected_to bid_item_url(BidItem.last)
  end

  test "should show bid_item" do
    get bid_item_url(@bid_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_bid_item_url(@bid_item)
    assert_response :success
  end

  test "should update bid_item" do
<<<<<<< HEAD
    patch bid_item_url(@bid_item), params: { bid_item: { bidder_id: @bid_item.bidder_id, description: @bid_item.description, name: @bid_item.name, price: @bid_item.price, saler_id: @bid_item.saler_id } }
=======
    patch bid_item_url(@bid_item), params: { bid_item: { description: @bid_item.description, item_name: @bid_item.item_name, starting_price: @bid_item.starting_price, fixed_price: @bid_item.fixed_price, seller_id: @bid_item.seller_id } }
>>>>>>> 5a9fa76ff5c2e2b1196661b93e8303b0d7ada712
    assert_redirected_to bid_item_url(@bid_item)
  end

  test "should destroy bid_item" do
    assert_difference('BidItem.count', -1) do
      delete bid_item_url(@bid_item)
    end

    assert_redirected_to bid_items_url
  end
end
