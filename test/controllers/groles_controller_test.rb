require 'test_helper'

class GrolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gr = groles(:one)
  end

  test "should get index" do
    get groles_url
    assert_response :success
  end

  test "should get new" do
    get new_grole_url
    assert_response :success
  end

  test "should get show" do
    get grole_url(@gr)
    assert_response :success
  end

  test "should get edit" do
    get edit_grole_url(@gr)
    assert_response :success
  end
end
