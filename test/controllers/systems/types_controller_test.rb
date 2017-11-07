require 'test_helper'

class Systems::TypesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get systems_types_index_url
    assert_response :success
  end

  test "should get new" do
    get systems_types_new_url
    assert_response :success
  end

  test "should get show" do
    get systems_types_show_url
    assert_response :success
  end

  test "should get edit" do
    get systems_types_edit_url
    assert_response :success
  end

end
