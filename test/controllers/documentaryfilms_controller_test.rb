require "test_helper"

class DocumentaryfilmsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get documentaryfilms_index_url
    assert_response :success
  end

  test "should get new" do
    get documentaryfilms_new_url
    assert_response :success
  end
end
