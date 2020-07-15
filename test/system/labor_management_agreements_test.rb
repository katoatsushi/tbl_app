require "application_system_test_case"

class LaborManagementAgreementsTest < ApplicationSystemTestCase
  setup do
    @labor_management_agreement = labor_management_agreements(:one)
  end

  test "visiting the index" do
    visit labor_management_agreements_url
    assert_selector "h1", text: "Labor Management Agreements"
  end

  test "creating a Labor management agreement" do
    visit labor_management_agreements_url
    click_on "New Labor Management Agreement"

    click_on "Create Labor management agreement"

    assert_text "Labor management agreement was successfully created"
    click_on "Back"
  end

  test "updating a Labor management agreement" do
    visit labor_management_agreements_url
    click_on "Edit", match: :first

    click_on "Update Labor management agreement"

    assert_text "Labor management agreement was successfully updated"
    click_on "Back"
  end

  test "destroying a Labor management agreement" do
    visit labor_management_agreements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Labor management agreement was successfully destroyed"
  end
end
