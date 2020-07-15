require 'test_helper'

class EmploymentPeriodsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employment_period = employment_periods(:one)
  end

  test "should get index" do
    get employment_periods_url
    assert_response :success
  end

  test "should get new" do
    get new_employment_period_url
    assert_response :success
  end

  test "should create employment_period" do
    assert_difference('EmploymentPeriod.count') do
      post employment_periods_url, params: { employment_period: {  } }
    end

    assert_redirected_to employment_period_url(EmploymentPeriod.last)
  end

  test "should show employment_period" do
    get employment_period_url(@employment_period)
    assert_response :success
  end

  test "should get edit" do
    get edit_employment_period_url(@employment_period)
    assert_response :success
  end

  test "should update employment_period" do
    patch employment_period_url(@employment_period), params: { employment_period: {  } }
    assert_redirected_to employment_period_url(@employment_period)
  end

  test "should destroy employment_period" do
    assert_difference('EmploymentPeriod.count', -1) do
      delete employment_period_url(@employment_period)
    end

    assert_redirected_to employment_periods_url
  end
end
