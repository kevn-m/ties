require "test_helper"

class ReferralsControllerTest < ActionDispatch::IntegrationTest
  test "should get request" do
    get referrals_request_url
    assert_response :success
  end

  test "should get accept" do
    get referrals_accept_url
    assert_response :success
  end

  test "should get reject" do
    get referrals_reject_url
    assert_response :success
  end

  test "should get index" do
    get referrals_index_url
    assert_response :success
  end

  test "should get create" do
    get referrals_create_url
    assert_response :success
  end
end
