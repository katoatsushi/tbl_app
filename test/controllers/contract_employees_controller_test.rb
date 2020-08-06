require 'test_helper'

class ContractEmployeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contract_employee = contract_employees(:one)
  end

  test "should get index" do
    get contract_employees_url
    assert_response :success
  end

  test "should get new" do
    get new_contract_employee_url
    assert_response :success
  end

  test "should create contract_employee" do
    assert_difference('ContractEmployee.count') do
      post contract_employees_url, params: { contract_employee: {  } }
    end

    assert_redirected_to contract_employee_url(ContractEmployee.last)
  end

  test "should show contract_employee" do
    get contract_employee_url(@contract_employee)
    assert_response :success
  end

  test "should get edit" do
    get edit_contract_employee_url(@contract_employee)
    assert_response :success
  end

  test "should update contract_employee" do
    patch contract_employee_url(@contract_employee), params: { contract_employee: {  } }
    assert_redirected_to contract_employee_url(@contract_employee)
  end

  test "should destroy contract_employee" do
    assert_difference('ContractEmployee.count', -1) do
      delete contract_employee_url(@contract_employee)
    end

    assert_redirected_to contract_employees_url
  end
end
