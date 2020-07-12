require "application_system_test_case"

class CDetailsTest < ApplicationSystemTestCase
  setup do
    @c_detail = c_details(:one)
  end

  test "visiting the index" do
    visit c_details_url
    assert_selector "h1", text: "C Details"
  end

  test "creating a C detail" do
    visit c_details_url
    click_on "New C Detail"

    click_on "Create C detail"

    assert_text "C detail was successfully created"
    click_on "Back"
  end

  test "updating a C detail" do
    visit c_details_url
    click_on "Edit", match: :first

    click_on "Update C detail"

    assert_text "C detail was successfully updated"
    click_on "Back"
  end

  test "destroying a C detail" do
    visit c_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "C detail was successfully destroyed"
  end
end
