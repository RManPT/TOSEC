require 'test_helper'

class SystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sys = systems(:one)
  end

  test "should get index" do
    get systems_url
    assert_response :success
  end

  test "should get new" do
    get new_system_url
    assert_response :success
  end

  test "should get show" do
    get system_url(@sys)
    assert_response :success
  end

  test "should get edit" do
    get edit_system_url(@sys)
    assert_response :success
  end
  test "should destroy system" do
    assert_difference('System.count', -1) do
      delete system_url(@sys)
    end
 
    assert_redirected_to systems_path
  end
end
