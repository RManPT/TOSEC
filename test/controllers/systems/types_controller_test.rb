require 'test_helper'

class Systems::TypesControllerTest < ActionDispatch::IntegrationTest

  setup do
    @type = systems_types(:one)
  end

  test "should get index" do
    get systems_types_url
    assert_response :success
  end

  test "should get new" do
    get new_systems_type_url
    assert_response :success
  end

  test "should get show" do
    get systems_type_url(@type)
    assert_response :success
  end

  test "should get edit" do
    get edit_systems_type_url(@type)
    assert_response :success
  end

end
