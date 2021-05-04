require "test_helper"

class SessionControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get session_controller_url
    assert_response :success
  end
end
