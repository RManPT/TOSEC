require 'test_helper'

class SystemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sys = systems(:commodore_amiga)
    @cmp = companies(:commodore)
    @st = systems_types(:systype1)
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
    #byebug
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
    patch system_url(@sys), params: { system: { name: "updated", abbreviation: "upd",company_id:@cmp.id, systemsType_id:@st.id, dateRelease:DateTime.new(2014, 12, 12)} }
 
    assert_redirected_to system_url(@sys)
    # Reload association to fetch updated data and assert that title is updated.
    @sys.reload
    assert_equal "updated", @sys.name
    assert_equal "upd", @sys.abbreviation
    assert_equal DateTime.new(2014, 12, 12), @sys.dateRelease
    assert_equal @cmp.id, @sys.company_id
    assert_equal @st.id, @sys.systemsType_id
  end
  test "should create system" do
    assert_difference('System.count') do
      post systems_url, params: { system: { name: 'Rails is awesome!', abbreviation: 'upd', dateRelease:DateTime.new(2014, 12, 12), company_id:@cmp.id, systemsType_id:@st.id } }
    end
  
    assert_redirected_to system_path(System.last)
  end
end
