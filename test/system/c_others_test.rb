require "application_system_test_case"

class COthersTest < ApplicationSystemTestCase
  setup do
    @c_other = c_others(:one)
  end

  test "visiting the index" do
    visit c_others_url
    assert_selector "h1", text: "C Others"
  end

  test "creating a C other" do
    visit c_others_url
    click_on "New C Other"

    click_on "Create C other"

    assert_text "C other was successfully created"
    click_on "Back"
  end

  test "updating a C other" do
    visit c_others_url
    click_on "Edit", match: :first

    click_on "Update C other"

    assert_text "C other was successfully updated"
    click_on "Back"
  end

  test "destroying a C other" do
    visit c_others_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "C other was successfully destroyed"
  end
end
