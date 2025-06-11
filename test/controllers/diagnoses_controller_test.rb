require "test_helper"

class DiagnosesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get diagnoses_index_url
    assert_response :success
  end
end
