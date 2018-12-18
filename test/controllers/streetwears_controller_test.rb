require 'test_helper'

class StreetwearsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get streetwears_index_url
    assert_response :success
  end

end
