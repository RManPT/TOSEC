require 'test_helper'

class DatfilesControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @df = datfiles(:dat1)
    @ct = collection_types(:tosec)
    @sys = systems(:sega_game_gear)
    @ds = datstatuses(:status_active)
  end

  test "should get index" do
    get datfiles_url
    assert_response :success
  end

  test "should get new" do
    sign_in users(:barcelos)
    get new_datfile_url
    assert_response :success
  end

  test "should get show" do
    get datfile_url(@df)
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:barcelos)
    get edit_datfile_url(@df)
    assert_response :success
  end

  test "should destroy datfile" do
    sign_in users(:admin)
    assert_difference('Datfile.count', -1) do
      delete datfile_url(@df)
    end
 
    assert_redirected_to datfiles_path
  end
  test "should update datfile" do
    sign_in users(:admin)
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
    sign_in users(:barcelos)
    assert_difference('Datfile.count') do
     # byebug
      post datfiles_url, params: { datfile: { name: "updated", readme: "updated", collection_type_id: @ct.id , system_id:@sys.id, datstatus_id: @ds.id } }
    end
  
    assert_redirected_to datfile_path(Datfile.last)
  end
end
