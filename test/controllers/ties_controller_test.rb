require "test_helper"

class TiesControllerTest < ActionDispatch::IntegrationTest
  test "should get chat_list" do
    get ties_chat_list_url
    assert_response :success
  end

  test "should get index" do
    get ties_index_url
    assert_response :success
  end

  test "should get show" do
    get ties_show_url
    assert_response :success
  end
end
