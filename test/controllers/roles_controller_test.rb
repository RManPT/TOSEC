require 'test_helper'

class RolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @r = roles(:one)
  end

  test "should get index" do
    get roles_url
    assert_response :success
  end

  test "should get new" do
    get new_role_url
    assert_response :success
  end

  test "should get show" do
    get role_url(@r)
    assert_response :success
  end

  test "should get edit" do
    get edit_role_url(@r)
    assert_response :success
  end
  test "should destroy role" do
    assert_difference('Role.count', -1) do
      delete role_url(@r)
    end
 
    assert_redirected_to roles_path
  end
end
