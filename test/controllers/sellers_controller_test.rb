require 'test_helper'

class SellersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sellers_index_url
    assert_response :success
  end

end
