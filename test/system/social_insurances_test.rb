require "application_system_test_case"

class SocialInsurancesTest < ApplicationSystemTestCase
  setup do
    @social_insurance = social_insurances(:one)
  end

  test "visiting the index" do
    visit social_insurances_url
    assert_selector "h1", text: "Social Insurances"
  end

  test "creating a Social insurance" do
    visit social_insurances_url
    click_on "New Social Insurance"

    click_on "Create Social insurance"

    assert_text "Social insurance was successfully created"
    click_on "Back"
  end

  test "updating a Social insurance" do
    visit social_insurances_url
    click_on "Edit", match: :first

    click_on "Update Social insurance"

    assert_text "Social insurance was successfully updated"
    click_on "Back"
  end

  test "destroying a Social insurance" do
    visit social_insurances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Social insurance was successfully destroyed"
  end
end
