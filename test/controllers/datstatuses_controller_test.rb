require 'test_helper'

class DatstatusesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  
  setup do
    @ds = datstatuses(:status_active)
  end

  test "should get index" do
    get datstatuses_url
    assert_response :success
  end

  test "should get new" do
    get new_datstatus_url
    assert_response :success
  end

  test "should get show" do
    get datstatus_url(@ds)
    assert_response :success
  end

  test "should get edit" do
    get edit_datstatus_url(@ds)
    assert_response :success
  end
  test "should destroy datstatus" do
    assert_difference('Datstatus.count', -1) do
      delete datstatus_url(@ds)
    end
 
    assert_redirected_to datstatuses_path
  end
  test "should update datstatus" do
    sign_in users(:admin)
    patch datstatus_url(@ds), params: { datstatus: { name: "updated", abbreviation: "sss", descStatus: "updated"} }
 
    assert_redirected_to datstatus_url(@ds)
    # Reload association to fetch updated data and assert that title is updated.
    @ds.reload
    assert_equal "updated", @ds.name
    assert_equal "sss", @ds.abbreviation
    assert_equal "updated", @ds.descStatus
  end

  test "should create datstatus" do
    sign_in users(:admin)
    assert_difference('Datstatus.count') do
      post datstatuses_url, params: { datstatus: { name: "updated", abbreviation: "sss", descStatus: "updated"} }
    end
  
    assert_redirected_to datstatus_url(Datstatus.last)
  end
end
