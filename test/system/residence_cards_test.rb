require "application_system_test_case"

class ResidenceCardsTest < ApplicationSystemTestCase
  setup do
    @residence_card = residence_cards(:one)
  end

  test "visiting the index" do
    visit residence_cards_url
    assert_selector "h1", text: "Residence Cards"
  end

  test "creating a Residence card" do
    visit residence_cards_url
    click_on "New Residence Card"

    click_on "Create Residence card"

    assert_text "Residence card was successfully created"
    click_on "Back"
  end

  test "updating a Residence card" do
    visit residence_cards_url
    click_on "Edit", match: :first

    click_on "Update Residence card"

    assert_text "Residence card was successfully updated"
    click_on "Back"
  end

  test "destroying a Residence card" do
    visit residence_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Residence card was successfully destroyed"
  end
end
