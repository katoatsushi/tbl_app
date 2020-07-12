require "application_system_test_case"

class CTimesTest < ApplicationSystemTestCase
  setup do
    @c_time = c_times(:one)
  end

  test "visiting the index" do
    visit c_times_url
    assert_selector "h1", text: "C Times"
  end

  test "creating a C time" do
    visit c_times_url
    click_on "New C Time"

    click_on "Create C time"

    assert_text "C time was successfully created"
    click_on "Back"
  end

  test "updating a C time" do
    visit c_times_url
    click_on "Edit", match: :first

    click_on "Update C time"

    assert_text "C time was successfully updated"
    click_on "Back"
  end

  test "destroying a C time" do
    visit c_times_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "C time was successfully destroyed"
  end
end
