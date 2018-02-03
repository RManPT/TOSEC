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
  test "should destroy systemsType" do
    assert_difference('SystemsType.count', -1) do
      delete systems_type_url(@type)
    end
 
    assert_redirected_to systems_types_path
  end
  test "should update systemsType" do
    patch systems_type_url(@type), params: { systems_type: { name: "updated"} }
 
    assert_redirected_to systems_type_url(@type)
    # Reload association to fetch updated data and assert that title is updated.
    @type.reload
    assert_equal "updated", @type.name
  end
  test "should create colectionTypes" do
    assert_difference('SystemsType.count') do
      post systems_types_url, params: { systems_type: { name: "updated" } }
    end
  
    assert_redirected_to systems_type_path(SystemsType.last)
  end
end
