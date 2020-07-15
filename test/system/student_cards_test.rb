require "application_system_test_case"

class StudentCardsTest < ApplicationSystemTestCase
  setup do
    @student_card = student_cards(:one)
  end

  test "visiting the index" do
    visit student_cards_url
    assert_selector "h1", text: "Student Cards"
  end

  test "creating a Student card" do
    visit student_cards_url
    click_on "New Student Card"

    click_on "Create Student card"

    assert_text "Student card was successfully created"
    click_on "Back"
  end

  test "updating a Student card" do
    visit student_cards_url
    click_on "Edit", match: :first

    click_on "Update Student card"

    assert_text "Student card was successfully updated"
    click_on "Back"
  end

  test "destroying a Student card" do
    visit student_cards_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student card was successfully destroyed"
  end
end
