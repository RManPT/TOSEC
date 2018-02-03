require 'test_helper'

class DatstatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ds = datstatuses(:one)
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
end
