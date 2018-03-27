require 'test_helper'

class ChainControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get chain_input_url
    assert_response :success
  end

  test "should get view" do
    get chain_view_url
    assert_response :success
  end

end
