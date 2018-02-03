require 'test_helper'

class CollectionTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @collection = collection_types(:one)
  end

  test "should get index" do
    get collection_types_url
    assert_response :success
  end

  test "should get new" do
    get new_collection_type_url
    assert_response :success
  end

  test "should get show" do
    get collection_type_url(@collection)
    assert_response :success
  end

  test "should get edit" do
    get edit_collection_type_url(@collection)
    assert_response :success
  end
  test "should destroy collection_type" do
    assert_difference('CollectionType.count', -1) do
      delete collection_type_url(@collection)
    end
 
    assert_redirected_to collection_types_path
  end
  test "should update collection_type" do
    patch collection_type_url(@collection), params: { collection_type: { name: "updated", desc: "updated"  } }
 
    assert_redirected_to collection_type_url(@collection)
    # Reload association to fetch updated data and assert that title is updated.
    @collection.reload
    assert_equal "updated", @collection.name
    assert_equal "updated", @collection.desc
  end
end
