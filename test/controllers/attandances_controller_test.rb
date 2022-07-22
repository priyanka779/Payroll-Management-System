require "test_helper"

class AttandancesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get attandances_index_url
    assert_response :success
  end

  test "should get new" do
    get attandances_new_url
    assert_response :success
  end

  test "should get show" do
    get attandances_show_url
    assert_response :success
  end
end
