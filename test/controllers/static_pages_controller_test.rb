require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get bid" do
    get static_pages_bid_url
    assert_response :success
  end

end
