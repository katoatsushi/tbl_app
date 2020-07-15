require "application_system_test_case"

class StudentChecksTest < ApplicationSystemTestCase
  setup do
    @student_check = student_checks(:one)
  end

  test "visiting the index" do
    visit student_checks_url
    assert_selector "h1", text: "Student Checks"
  end

  test "creating a Student check" do
    visit student_checks_url
    click_on "New Student Check"

    click_on "Create Student check"

    assert_text "Student check was successfully created"
    click_on "Back"
  end

  test "updating a Student check" do
    visit student_checks_url
    click_on "Edit", match: :first

    click_on "Update Student check"

    assert_text "Student check was successfully updated"
    click_on "Back"
  end

  test "destroying a Student check" do
    visit student_checks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Student check was successfully destroyed"
  end
end
