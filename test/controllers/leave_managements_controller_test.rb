require "test_helper"

class LeaveManagementsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get leave_managements_new_url
    assert_response :success
  end

  test "should get index" do
    get leave_managements_index_url
    assert_response :success
  end

  test "should get create" do
    get leave_managements_create_url
    assert_response :success
  end

  test "should get show" do
    get leave_managements_show_url
    assert_response :success
  end
end
