require 'test_helper'

class CompaniesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cmp = companies(:sega)
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
  test "should update company" do
    patch company_url(@cmp), params: { company: { title: "updated", text: "updated"  } }
 
    assert_redirected_to company_url(@cmp)
    # Reload association to fetch updated data and assert that title is updated.
    @cmp.reload
    assert_equal "updated", @cmp.title
    assert_equal "updated", @cmp.text
  end
  test "should create company" do
    assert_difference('Company.count') do
      post companies_url, params: { company: { title: "updated", text: "updated"  } }
    end
  
    assert_redirected_to company_path(Company.last)
  end
end
