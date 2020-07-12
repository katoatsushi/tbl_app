require "application_system_test_case"

class COriginsTest < ApplicationSystemTestCase
  setup do
    @c_origin = c_origins(:one)
  end

  test "visiting the index" do
    visit c_origins_url
    assert_selector "h1", text: "C Origins"
  end

  test "creating a C origin" do
    visit c_origins_url
    click_on "New C Origin"

    click_on "Create C origin"

    assert_text "C origin was successfully created"
    click_on "Back"
  end

  test "updating a C origin" do
    visit c_origins_url
    click_on "Edit", match: :first

    click_on "Update C origin"

    assert_text "C origin was successfully updated"
    click_on "Back"
  end

  test "destroying a C origin" do
    visit c_origins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "C origin was successfully destroyed"
  end
end
