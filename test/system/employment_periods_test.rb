require "application_system_test_case"

class EmploymentPeriodsTest < ApplicationSystemTestCase
  setup do
    @employment_period = employment_periods(:one)
  end

  test "visiting the index" do
    visit employment_periods_url
    assert_selector "h1", text: "Employment Periods"
  end

  test "creating a Employment period" do
    visit employment_periods_url
    click_on "New Employment Period"

    click_on "Create Employment period"

    assert_text "Employment period was successfully created"
    click_on "Back"
  end

  test "updating a Employment period" do
    visit employment_periods_url
    click_on "Edit", match: :first

    click_on "Update Employment period"

    assert_text "Employment period was successfully updated"
    click_on "Back"
  end

  test "destroying a Employment period" do
    visit employment_periods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Employment period was successfully destroyed"
  end
end
