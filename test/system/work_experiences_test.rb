require "application_system_test_case"

class WorkExperiencesTest < ApplicationSystemTestCase
  setup do
    @work_experience = work_experiences(:one)
  end

  test "visiting the index" do
    visit work_experiences_url
    assert_selector "h1", text: "Work Experiences"
  end

  test "creating a Work experience" do
    visit work_experiences_url
    click_on "New Work Experience"

    click_on "Create Work experience"

    assert_text "Work experience was successfully created"
    click_on "Back"
  end

  test "updating a Work experience" do
    visit work_experiences_url
    click_on "Edit", match: :first

    click_on "Update Work experience"

    assert_text "Work experience was successfully updated"
    click_on "Back"
  end

  test "destroying a Work experience" do
    visit work_experiences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work experience was successfully destroyed"
  end
end
