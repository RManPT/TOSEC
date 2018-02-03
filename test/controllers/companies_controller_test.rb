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
  test "should destroy company" do
    assert_difference('Company.count', -1) do
      delete company_url(@cmp)
    end
 
    assert_redirected_to companies_path
  end
end
