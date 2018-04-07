require 'test_helper'

class FivesControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get fives_input_url
    assert_response :success
  end

  test "should get view" do
    get fives_view_url
    assert_response :success
  end

end
