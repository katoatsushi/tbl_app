require 'test_helper'

class COthersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_other = c_others(:one)
  end

  test "should get index" do
    get c_others_url
    assert_response :success
  end

  test "should get new" do
    get new_c_other_url
    assert_response :success
  end

  test "should create c_other" do
    assert_difference('COther.count') do
      post c_others_url, params: { c_other: {  } }
    end

    assert_redirected_to c_other_url(COther.last)
  end

  test "should show c_other" do
    get c_other_url(@c_other)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_other_url(@c_other)
    assert_response :success
  end

  test "should update c_other" do
    patch c_other_url(@c_other), params: { c_other: {  } }
    assert_redirected_to c_other_url(@c_other)
  end

  test "should destroy c_other" do
    assert_difference('COther.count', -1) do
      delete c_other_url(@c_other)
    end

    assert_redirected_to c_others_url
  end
end
