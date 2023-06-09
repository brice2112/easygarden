require "test_helper"

class VegetableControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get vegetable_show_url
    assert_response :success
  end
end
