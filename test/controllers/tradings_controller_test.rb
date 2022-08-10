require "test_helper"

class TradingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tradings_index_url
    assert_response :success
  end

  test "should get new" do
    get tradings_new_url
    assert_response :success
  end

  test "should get create" do
    get tradings_create_url
    assert_response :success
  end

  test "should get update" do
    get tradings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get tradings_destroy_url
    assert_response :success
  end
end
