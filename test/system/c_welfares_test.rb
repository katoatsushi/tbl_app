require "application_system_test_case"

class CWelfaresTest < ApplicationSystemTestCase
  setup do
    @c_welfare = c_welfares(:one)
  end

  test "visiting the index" do
    visit c_welfares_url
    assert_selector "h1", text: "C Welfares"
  end

  test "creating a C welfare" do
    visit c_welfares_url
    click_on "New C Welfare"

    click_on "Create C welfare"

    assert_text "C welfare was successfully created"
    click_on "Back"
  end

  test "updating a C welfare" do
    visit c_welfares_url
    click_on "Edit", match: :first

    click_on "Update C welfare"

    assert_text "C welfare was successfully updated"
    click_on "Back"
  end

  test "destroying a C welfare" do
    visit c_welfares_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "C welfare was successfully destroyed"
  end
end
