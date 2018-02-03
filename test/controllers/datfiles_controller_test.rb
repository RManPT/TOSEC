require 'test_helper'

class DatfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @df = datfiles(:one)
  end

  test "should get index" do
    get datfiles_url
    assert_response :success
  end

  test "should get new" do
    get new_datfile_url
    assert_response :success
  end

  test "should get show" do
    get datfile_url(@df)
    assert_response :success
  end

  test "should get edit" do
    get edit_datfile_url(@df)
    assert_response :success
  end
  test "should destroy datfile" do
    assert_difference('Datfiles.count', -1) do
      delete datfile_url(@df)
    end
 
    assert_redirected_to datfiles_path
  end
end
