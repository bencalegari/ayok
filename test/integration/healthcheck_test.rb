require "test_helper"

class HealthcheckTest < ActionDispatch::IntegrationTest
  test "healthcheck endpoint returns success" do
    get "/up"
    assert_response :success
  end
end
