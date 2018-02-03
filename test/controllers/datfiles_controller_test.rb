require 'test_helper'

class DatfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @df = datfiles(:one)
    @ct = collection_types(:one)
    @sys = systems(:one)
    @ds = datstatuses(:one)
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
      delete datfile_url(@df)
    end
 
    assert_redirected_to datfiles_path
  end
  test "should update datfile" do
    patch datfile_url(@df), params: { datfile: { name: "updated", readme: "updated", collection_type_id: @ct.id , system_id:@sys.id, datstatus_id: @ds.id } }
 
    assert_redirected_to datfile_url(@df)
    # Reload association to fetch updated data and assert that title is updated.
    @df.reload
    assert_equal "updated", @df.name
    assert_equal "updated", @df.readme
    assert_equal @ct.id, @df.collection_type_id
    assert_equal @sys.id, @df.system_id
    assert_equal @ds.id, @df.datstatus_id
  end
  test "should create datfile" do
    assert_difference('Datfile.count') do
      post datfiles_url, params: { datfile: { name: "updated", readme: "updated", collection_type_id: @ct.id , system_id:@sys.id, datstatus_id: @ds.id } }
    end
  
    assert_redirected_to datfile_path(Datfile.last)
  end
end
