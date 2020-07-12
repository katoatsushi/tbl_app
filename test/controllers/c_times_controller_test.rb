require 'test_helper'

class CTimesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_time = c_times(:one)
  end

  test "should get index" do
    get c_times_url
    assert_response :success
  end

  test "should get new" do
    get new_c_time_url
    assert_response :success
  end

  test "should create c_time" do
    assert_difference('CTime.count') do
      post c_times_url, params: { c_time: {  } }
    end

    assert_redirected_to c_time_url(CTime.last)
  end

  test "should show c_time" do
    get c_time_url(@c_time)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_time_url(@c_time)
    assert_response :success
  end

  test "should update c_time" do
    patch c_time_url(@c_time), params: { c_time: {  } }
    assert_redirected_to c_time_url(@c_time)
  end

  test "should destroy c_time" do
    assert_difference('CTime.count', -1) do
      delete c_time_url(@c_time)
    end

    assert_redirected_to c_times_url
  end
end
