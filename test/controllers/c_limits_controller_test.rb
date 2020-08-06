require 'test_helper'

class CLimitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_limit = c_limits(:one)
  end

  test "should get index" do
    get c_limits_url
    assert_response :success
  end

  test "should get new" do
    get new_c_limit_url
    assert_response :success
  end

  test "should create c_limit" do
    assert_difference('CLimit.count') do
      post c_limits_url, params: { c_limit: {  } }
    end

    assert_redirected_to c_limit_url(CLimit.last)
  end

  test "should show c_limit" do
    get c_limit_url(@c_limit)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_limit_url(@c_limit)
    assert_response :success
  end

  test "should update c_limit" do
    patch c_limit_url(@c_limit), params: { c_limit: {  } }
    assert_redirected_to c_limit_url(@c_limit)
  end

  test "should destroy c_limit" do
    assert_difference('CLimit.count', -1) do
      delete c_limit_url(@c_limit)
    end

    assert_redirected_to c_limits_url
  end
end
