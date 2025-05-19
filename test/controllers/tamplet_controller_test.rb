require "test_helper"

class TampletControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tamplet_index_url
    assert_response :success
  end

  test "should get new" do
    get tamplet_new_url
    assert_response :success
  end

  test "should get show" do
    get tamplet_show_url
    assert_response :success
  end

  test "should get destroy" do
    get tamplet_destroy_url
    assert_response :success
  end

  test "should get create" do
    get tamplet_create_url
    assert_response :success
  end
end
