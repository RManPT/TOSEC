require 'test_helper'

class RoutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rou = routes(:one)
  end

  test "should get index" do
    get routes_url
    assert_response :success
  end

  test "should get new" do
    get new_route_url
    assert_response :success
  end

  test "should get show" do
    get route_url(@rou)
    assert_response :success
  end

  test "should get edit" do
    get edit_route_url(@rou)
    assert_response :success
  end
end
