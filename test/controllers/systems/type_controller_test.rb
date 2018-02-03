require 'test_helper'

class Systems::TypeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get systems_type_index_url
    assert_response :success
  end

  test "should get new" do
    get systems_type_new_url
    assert_response :success
  end

  test "should get show" do
    get systems_type_show_url
    assert_response :success
  end

  test "should get edit" do
    get systems_type_edit_url
    assert_response :success
  end

end
