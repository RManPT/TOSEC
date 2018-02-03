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
  test "should update user" do
    patch user_url(@usr), params: { user: { username: "updated", email: "upd@pt.pt"} }
 
    assert_redirected_to user_url(@usr)
    # Reload association to fetch updated data and assert that title is updated.
    @usr.reload
    assert_equal "updated", @usr.username
    assert_equal "upd@pt.pt", @usr.email

  end
  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: {user: { username: "updated", email: "upsssssd@pt.pt", password:"dsfkfjsdlasdlf"} }
    end
  
    assert_redirected_to user_path(User.last)
  end
end