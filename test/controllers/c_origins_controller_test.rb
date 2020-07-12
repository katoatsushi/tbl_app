require 'test_helper'

class COriginsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @c_origin = c_origins(:one)
  end

  test "should get index" do
    get c_origins_url
    assert_response :success
  end

  test "should get new" do
    get new_c_origin_url
    assert_response :success
  end

  test "should create c_origin" do
    assert_difference('COrigin.count') do
      post c_origins_url, params: { c_origin: {  } }
    end

    assert_redirected_to c_origin_url(COrigin.last)
  end

  test "should show c_origin" do
    get c_origin_url(@c_origin)
    assert_response :success
  end

  test "should get edit" do
    get edit_c_origin_url(@c_origin)
    assert_response :success
  end

  test "should update c_origin" do
    patch c_origin_url(@c_origin), params: { c_origin: {  } }
    assert_redirected_to c_origin_url(@c_origin)
  end

  test "should destroy c_origin" do
    assert_difference('COrigin.count', -1) do
      delete c_origin_url(@c_origin)
    end

    assert_redirected_to c_origins_url
  end
end
