require 'test_helper'

class SocialInsurancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_insurance = social_insurances(:one)
  end

  test "should get index" do
    get social_insurances_url
    assert_response :success
  end

  test "should get new" do
    get new_social_insurance_url
    assert_response :success
  end

  test "should create social_insurance" do
    assert_difference('SocialInsurance.count') do
      post social_insurances_url, params: { social_insurance: {  } }
    end

    assert_redirected_to social_insurance_url(SocialInsurance.last)
  end

  test "should show social_insurance" do
    get social_insurance_url(@social_insurance)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_insurance_url(@social_insurance)
    assert_response :success
  end

  test "should update social_insurance" do
    patch social_insurance_url(@social_insurance), params: { social_insurance: {  } }
    assert_redirected_to social_insurance_url(@social_insurance)
  end

  test "should destroy social_insurance" do
    assert_difference('SocialInsurance.count', -1) do
      delete social_insurance_url(@social_insurance)
    end

    assert_redirected_to social_insurances_url
  end
end
