require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usr = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should get show" do
    get user_url(@usr)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@usr)
    assert_response :success
  end
  
  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@usr)
    end
 
    assert_redirected_to users_path
  end
end