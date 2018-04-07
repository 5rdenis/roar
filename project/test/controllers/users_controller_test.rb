require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end



  test "should get new" do
    get new_user_url
    assert_response :success
  end
=begin
  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { name: @user.name, password_digest: @user.password_digest } }
    end

  end
=end
end
