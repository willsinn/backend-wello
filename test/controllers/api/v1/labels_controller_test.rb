require 'test_helper'

class Api::V1::LabelsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get labels_index_url
    assert_response :success
  end

  test "should get show" do
    get labels_show_url
    assert_response :success
  end

  test "should get create" do
    get labels_create_url
    assert_response :success
  end

  test "should get update" do
    get labels_update_url
    assert_response :success
  end

end
