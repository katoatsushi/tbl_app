require "application_system_test_case"

class EmployeeInfosTest < ApplicationSystemTestCase
  setup do
    @employee_info = employee_infos(:one)
  end

  test "visiting the index" do
    visit employee_infos_url
    assert_selector "h1", text: "Employee Infos"
  end

  test "creating a Employee info" do
    visit employee_infos_url
    click_on "New Employee Info"

    click_on "Create Employee info"

    assert_text "Employee info was successfully created"
    click_on "Back"
  end

  test "updating a Employee info" do
    visit employee_infos_url
    click_on "Edit", match: :first

    click_on "Update Employee info"

    assert_text "Employee info was successfully updated"
    click_on "Back"
  end

  test "destroying a Employee info" do
    visit employee_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employee info was successfully destroyed"
  end
end
