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
  test "should destroy route" do
    assert_difference('Route.count', -1) do
      delete route_url(@rou)
    end
 
    assert_redirected_to routes_path
  end
  test "should update route" do
    patch route_url(@rou), params: { route: { name: "updated", path: "updated",priority: "1"} }
 
    assert_redirected_to route_url(@rou)
    # Reload association to fetch updated data and assert that title is updated.
    @rou.reload
    assert_equal "updated", @rou.name
    assert_equal "updated", @rou.path
    assert_equal "1", @rou.priority
  end
end
