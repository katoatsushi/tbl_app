require 'test_helper'

class LaborStandardsActsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @labor_standards_act = labor_standards_acts(:one)
  end

  test "should get index" do
    get labor_standards_acts_url
    assert_response :success
  end

  test "should get new" do
    get new_labor_standards_act_url
    assert_response :success
  end

  test "should create labor_standards_act" do
    assert_difference('LaborStandardsAct.count') do
      post labor_standards_acts_url, params: { labor_standards_act: {  } }
    end

    assert_redirected_to labor_standards_act_url(LaborStandardsAct.last)
  end

  test "should show labor_standards_act" do
    get labor_standards_act_url(@labor_standards_act)
    assert_response :success
  end

  test "should get edit" do
    get edit_labor_standards_act_url(@labor_standards_act)
    assert_response :success
  end

  test "should update labor_standards_act" do
    patch labor_standards_act_url(@labor_standards_act), params: { labor_standards_act: {  } }
    assert_redirected_to labor_standards_act_url(@labor_standards_act)
  end

  test "should destroy labor_standards_act" do
    assert_difference('LaborStandardsAct.count', -1) do
      delete labor_standards_act_url(@labor_standards_act)
    end

    assert_redirected_to labor_standards_acts_url
  end
end
