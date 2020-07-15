require 'test_helper'

class LaborManagementAgreementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @labor_management_agreement = labor_management_agreements(:one)
  end

  test "should get index" do
    get labor_management_agreements_url
    assert_response :success
  end

  test "should get new" do
    get new_labor_management_agreement_url
    assert_response :success
  end

  test "should create labor_management_agreement" do
    assert_difference('LaborManagementAgreement.count') do
      post labor_management_agreements_url, params: { labor_management_agreement: {  } }
    end

    assert_redirected_to labor_management_agreement_url(LaborManagementAgreement.last)
  end

  test "should show labor_management_agreement" do
    get labor_management_agreement_url(@labor_management_agreement)
    assert_response :success
  end

  test "should get edit" do
    get edit_labor_management_agreement_url(@labor_management_agreement)
    assert_response :success
  end

  test "should update labor_management_agreement" do
    patch labor_management_agreement_url(@labor_management_agreement), params: { labor_management_agreement: {  } }
    assert_redirected_to labor_management_agreement_url(@labor_management_agreement)
  end

  test "should destroy labor_management_agreement" do
    assert_difference('LaborManagementAgreement.count', -1) do
      delete labor_management_agreement_url(@labor_management_agreement)
    end

    assert_redirected_to labor_management_agreements_url
  end
end
