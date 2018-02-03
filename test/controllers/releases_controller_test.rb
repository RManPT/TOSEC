require 'test_helper'

class ReleasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rele = releases(:one)
  end

  test "should get index" do
    get releases_url
    assert_response :success
  end

  test "should get new" do
    get new_release_url
    assert_response :success
  end

  test "should get show" do
    get release_url(@rele)
    assert_response :success
  end

  test "should get edit" do
    get edit_release_url(@rele)
    assert_response :success
  end
  test "should destroy release" do
    assert_difference('Release.count', -1) do
      delete release_url(@rele)
    end
 
    assert_redirected_to releases_path
  end
  test "should update release" do
    patch release_url(@rele), params: { release: { descRelease: "updated"} }
 
    assert_redirected_to release_url(@rele)
    # Reload association to fetch updated data and assert that title is updated.
    @rele.reload
    assert_equal "updated", @rele.descRelease
  end
end
