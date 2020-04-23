require 'test_helper'

class TaskChecklistsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get task_checklists_index_url
    assert_response :success
  end

  test "should get show" do
    get task_checklists_show_url
    assert_response :success
  end

  test "should get create" do
    get task_checklists_create_url
    assert_response :success
  end

  test "should get update" do
    get task_checklists_update_url
    assert_response :success
  end

  test "should get destroy" do
    get task_checklists_destroy_url
    assert_response :success
  end

end
