require "test_helper"

class TemplateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get template_index_url
    assert_response :success
  end

  test "should get new" do
    get template_new_url
    assert_response :success
  end

  test "should get show" do
    get template_show_url
    assert_response :success
  end

  test "should get destroy" do
    get template_destroy_url
    assert_response :success
  end

  test "should get create" do
    get template_create_url
    assert_response :success
  end
end
