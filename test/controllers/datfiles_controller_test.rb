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
end
