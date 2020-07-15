require "application_system_test_case"

class LaborStandardsActsTest < ApplicationSystemTestCase
  setup do
    @labor_standards_act = labor_standards_acts(:one)
  end

  test "visiting the index" do
    visit labor_standards_acts_url
    assert_selector "h1", text: "Labor Standards Acts"
  end

  test "creating a Labor standards act" do
    visit labor_standards_acts_url
    click_on "New Labor Standards Act"

    click_on "Create Labor standards act"

    assert_text "Labor standards act was successfully created"
    click_on "Back"
  end

  test "updating a Labor standards act" do
    visit labor_standards_acts_url
    click_on "Edit", match: :first

    click_on "Update Labor standards act"

    assert_text "Labor standards act was successfully updated"
    click_on "Back"
  end

  test "destroying a Labor standards act" do
    visit labor_standards_acts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Labor standards act was successfully destroyed"
  end
end
