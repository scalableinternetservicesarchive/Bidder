require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
	include Devise::Test::IntegrationHelpers
  test "should get show" do
  	sign_in users(:one)
    get user_path(:one)
    assert_response :success
  end

end
