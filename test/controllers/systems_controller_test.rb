require 'test_helper'

class SystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sys = systems(:one)
    @cmp = companies(:one)
    @st = systems_types(:one)
  end

  test "should get index" do
    get systems_url
    assert_response :success
  end

  test "should get new" do
    get new_system_url
    assert_response :success
  end

  test "should get show" do
    get system_url(@sys)
    assert_response :success
  end

  test "should get edit" do
    get edit_system_url(@sys)
    assert_response :success
  end
  test "should destroy system" do
    assert_difference('System.count', -1) do
      delete system_url(@sys)
    end
 
    assert_redirected_to systems_path
  end
  test "should update system" do
    patch system_url(@sys), params: { system: { name: "updated", abbreviation: "upd",company_id:@cmp.id, systemsType_id:@cmp.id, dateRelease:"2019/12/12"} }
 
    assert_redirected_to system_url(@sys)
    # Reload association to fetch updated data and assert that title is updated.
    @sys.reload
    assert_equal "updated", @sys.name
    assert_equal "upd", @sys.abbreviation
    assert_equal @cmp.id, @sys.company_id
    assert_equal @st.id, @sys.systemsType_id
  end
end
