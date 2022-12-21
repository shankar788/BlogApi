require "test_helper"

class Api::V1::BlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_v1_blogs_index_url
    assert_response :success
  end

  test "should get create" do
    get api_v1_blogs_create_url
    assert_response :success
  end

  test "should get update" do
    get api_v1_blogs_update_url
    assert_response :success
  end

  test "should get show" do
    get api_v1_blogs_show_url
    assert_response :success
  end
end
