require "application_system_test_case"

class ContractEmployeesTest < ApplicationSystemTestCase
  setup do
    @contract_employee = contract_employees(:one)
  end

  test "visiting the index" do
    visit contract_employees_url
    assert_selector "h1", text: "Contract Employees"
  end

  test "creating a Contract employee" do
    visit contract_employees_url
    click_on "New Contract Employee"

    click_on "Create Contract employee"

    assert_text "Contract employee was successfully created"
    click_on "Back"
  end

  test "updating a Contract employee" do
    visit contract_employees_url
    click_on "Edit", match: :first

    click_on "Update Contract employee"

    assert_text "Contract employee was successfully updated"
    click_on "Back"
  end

  test "destroying a Contract employee" do
    visit contract_employees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contract employee was successfully destroyed"
  end
end
