require 'test_helper'

class GrolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gr = groles(:grole_one)
    @us = users(:barcelos)
    @ro = roles(:admin_role)
    @rt = routes(:route1)
  end

  test "should get index" do
    get groles_url
    assert_response :success
  end

  test "should get new" do
    get new_grole_url
    assert_response :success
  end

  test "should get show" do
    get grole_url(@gr)
    assert_response :success
  end

  test "should get edit" do
    get edit_grole_url(@gr)
    assert_response :success
  end
  test "should destroy grole" do
    assert_difference('Grole.count', -1) do
      delete grole_url(@gr)
    end
 
    assert_redirected_to groles_path
  end
  test "should update grole" do
    patch grole_url(@gr), params: { grole: { route_id: @rt.id , role_id: @ro.id, user_id: @us.id} }
 
    assert_redirected_to grole_url(@gr)
    # Reload association to fetch updated data and assert that title is updated.
    @gr.reload
    assert_equal  @rt.id, @gr.route_id
    assert_equal  @ro.id, @gr.role_id
    assert_equal  @us.id, @gr.user_id
  end
  test "should create grole" do
    assert_difference('Grole.count') do
      post groles_url, params: { grole: { route_id: @rt.id , role_id: @ro.id, user_id: @us.id} }
    end
  
    assert_redirected_to grole_path(Grole.last)
  end
end
