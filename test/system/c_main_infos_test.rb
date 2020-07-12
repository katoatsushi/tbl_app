require "application_system_test_case"

class CMainInfosTest < ApplicationSystemTestCase
  setup do
    @c_main_info = c_main_infos(:one)
  end

  test "visiting the index" do
    visit c_main_infos_url
    assert_selector "h1", text: "C Main Infos"
  end

  test "creating a C main info" do
    visit c_main_infos_url
    click_on "New C Main Info"

    click_on "Create C main info"

    assert_text "C main info was successfully created"
    click_on "Back"
  end

  test "updating a C main info" do
    visit c_main_infos_url
    click_on "Edit", match: :first

    click_on "Update C main info"

    assert_text "C main info was successfully updated"
    click_on "Back"
  end

  test "destroying a C main info" do
    visit c_main_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "C main info was successfully destroyed"
  end
end
