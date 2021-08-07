require "test_helper"

class UserInterestsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get user_interests_create_url
    assert_response :success
  end

  test "should get destroy" do
    get user_interests_destroy_url
    assert_response :success
  end
end
