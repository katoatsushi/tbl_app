require "application_system_test_case"

class WorkInfosTest < ApplicationSystemTestCase
  setup do
    @work_info = work_infos(:one)
  end

  test "visiting the index" do
    visit work_infos_url
    assert_selector "h1", text: "Work Infos"
  end

  test "creating a Work info" do
    visit work_infos_url
    click_on "New Work Info"

    click_on "Create Work info"

    assert_text "Work info was successfully created"
    click_on "Back"
  end

  test "updating a Work info" do
    visit work_infos_url
    click_on "Edit", match: :first

    click_on "Update Work info"

    assert_text "Work info was successfully updated"
    click_on "Back"
  end

  test "destroying a Work info" do
    visit work_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work info was successfully destroyed"
  end
end
