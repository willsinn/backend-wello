require 'test_helper'

class Api::V1::CardsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get cards_create_url
    assert_response :success
  end

  test "should get update" do
    get cards_update_url
    assert_response :success
  end

  test "should get destroy" do
    get cards_destroy_url
    assert_response :success
  end

end
