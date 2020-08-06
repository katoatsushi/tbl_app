require "application_system_test_case"

class CLimitsTest < ApplicationSystemTestCase
  setup do
    @c_limit = c_limits(:one)
  end

  test "visiting the index" do
    visit c_limits_url
    assert_selector "h1", text: "C Limits"
  end

  test "creating a C limit" do
    visit c_limits_url
    click_on "New C Limit"

    click_on "Create C limit"

    assert_text "C limit was successfully created"
    click_on "Back"
  end

  test "updating a C limit" do
    visit c_limits_url
    click_on "Edit", match: :first

    click_on "Update C limit"

    assert_text "C limit was successfully updated"
    click_on "Back"
  end

  test "destroying a C limit" do
    visit c_limits_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "C limit was successfully destroyed"
  end
end
