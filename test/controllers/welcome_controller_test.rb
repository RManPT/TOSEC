require 'test_helper'

class WelcomeControllerTest < ActionDispatch::IntegrationTest
  test "should get start" do
    get welcome_start_url
    assert_response :success
  end

end
