require 'test_helper'

class ResidenceCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @residence_card = residence_cards(:one)
  end

  test "should get index" do
    get residence_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_residence_card_url
    assert_response :success
  end

  test "should create residence_card" do
    assert_difference('ResidenceCard.count') do
      post residence_cards_url, params: { residence_card: {  } }
    end

    assert_redirected_to residence_card_url(ResidenceCard.last)
  end

  test "should show residence_card" do
    get residence_card_url(@residence_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_residence_card_url(@residence_card)
    assert_response :success
  end

  test "should update residence_card" do
    patch residence_card_url(@residence_card), params: { residence_card: {  } }
    assert_redirected_to residence_card_url(@residence_card)
  end

  test "should destroy residence_card" do
    assert_difference('ResidenceCard.count', -1) do
      delete residence_card_url(@residence_card)
    end

    assert_redirected_to residence_cards_url
  end
end
