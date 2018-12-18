require 'test_helper'

class SneakersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sneakers_index_url
    assert_response :success
  end

end
