require "test_helper"

class WelcomsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get welcoms_index_url
    assert_response :success
  end
end
