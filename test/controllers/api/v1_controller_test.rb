require 'test_helper'

class Api::V1ControllerTest < ActionDispatch::IntegrationTest
  test "should get Favorites" do
    get api_v1_Favorites_url
    assert_response :success
  end

end
