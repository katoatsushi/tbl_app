require 'test_helper'

class CDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_detail = c_details(:one)
  end

  test "should get index" do
    get c_details_url
    assert_response :success
  end

  test "should get new" do
    get new_c_detail_url
    assert_response :success
  end

  test "should create c_detail" do
    assert_difference('CDetail.count') do
      post c_details_url, params: { c_detail: {  } }
    end

    assert_redirected_to c_detail_url(CDetail.last)
  end

  test "should show c_detail" do
    get c_detail_url(@c_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_detail_url(@c_detail)
    assert_response :success
  end

  test "should update c_detail" do
    patch c_detail_url(@c_detail), params: { c_detail: {  } }
    assert_redirected_to c_detail_url(@c_detail)
  end

  test "should destroy c_detail" do
    assert_difference('CDetail.count', -1) do
      delete c_detail_url(@c_detail)
    end

    assert_redirected_to c_details_url
  end
end
