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
end
