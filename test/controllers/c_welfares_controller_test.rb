require 'test_helper'

class CWelfaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_welfare = c_welfares(:one)
  end

  test "should get index" do
    get c_welfares_url
    assert_response :success
  end

  test "should get new" do
    get new_c_welfare_url
    assert_response :success
  end

  test "should create c_welfare" do
    assert_difference('CWelfare.count') do
      post c_welfares_url, params: { c_welfare: {  } }
    end

    assert_redirected_to c_welfare_url(CWelfare.last)
  end

  test "should show c_welfare" do
    get c_welfare_url(@c_welfare)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_welfare_url(@c_welfare)
    assert_response :success
  end

  test "should update c_welfare" do
    patch c_welfare_url(@c_welfare), params: { c_welfare: {  } }
    assert_redirected_to c_welfare_url(@c_welfare)
  end

  test "should destroy c_welfare" do
    assert_difference('CWelfare.count', -1) do
      delete c_welfare_url(@c_welfare)
    end

    assert_redirected_to c_welfares_url
  end
end
