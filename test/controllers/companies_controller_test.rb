require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cmp = companies(:one)
  end

  test "should get index" do
    get companies_url
    assert_response :success
  end

  test "should get new" do
    get new_company_url
    assert_response :success
  end

  test "should get show" do
    get company_url(@cmp)
    assert_response :success
  end

  test "should get edit" do
    get edit_company_url(@cmp)
    assert_response :success
  end
end
