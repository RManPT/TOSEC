require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get start" do
    get welcome_start_url
    assert_response :success
  end
  test "should get whatisit" do
    get welcome_whatisit_url
    assert_response :success
  end
  test "should get history" do
    get welcome_history_url
    assert_response :success
  end
  test "should get goals" do
    get welcome_goals_url
    assert_response :success
  end
  test "should get structure" do
    get welcome_structure_url
    assert_response :success
  end
  test "should get faq" do
    get welcome_faq_url
    assert_response :success
  end
end
