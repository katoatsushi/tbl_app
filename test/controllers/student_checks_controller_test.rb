require 'test_helper'

class StudentChecksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @student_check = student_checks(:one)
  end

  test "should get index" do
    get student_checks_url
    assert_response :success
  end

  test "should get new" do
    get new_student_check_url
    assert_response :success
  end

  test "should create student_check" do
    assert_difference('StudentCheck.count') do
      post student_checks_url, params: { student_check: {  } }
    end

    assert_redirected_to student_check_url(StudentCheck.last)
  end

  test "should show student_check" do
    get student_check_url(@student_check)
    assert_response :success
  end

  test "should get edit" do
    get edit_student_check_url(@student_check)
    assert_response :success
  end

  test "should update student_check" do
    patch student_check_url(@student_check), params: { student_check: {  } }
    assert_redirected_to student_check_url(@student_check)
  end

  test "should destroy student_check" do
    assert_difference('StudentCheck.count', -1) do
      delete student_check_url(@student_check)
    end

    assert_redirected_to student_checks_url
  end
end
