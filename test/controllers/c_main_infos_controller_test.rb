require 'test_helper'

class CMainInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_main_info = c_main_infos(:one)
  end

  test "should get index" do
    get c_main_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_c_main_info_url
    assert_response :success
  end

  test "should create c_main_info" do
    assert_difference('CMainInfo.count') do
      post c_main_infos_url, params: { c_main_info: {  } }
    end

    assert_redirected_to c_main_info_url(CMainInfo.last)
  end

  test "should show c_main_info" do
    get c_main_info_url(@c_main_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_main_info_url(@c_main_info)
    assert_response :success
  end

  test "should update c_main_info" do
    patch c_main_info_url(@c_main_info), params: { c_main_info: {  } }
    assert_redirected_to c_main_info_url(@c_main_info)
  end

  test "should destroy c_main_info" do
    assert_difference('CMainInfo.count', -1) do
      delete c_main_info_url(@c_main_info)
    end

    assert_redirected_to c_main_infos_url
  end
end
