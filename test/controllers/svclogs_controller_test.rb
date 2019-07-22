require 'test_helper'

class SvclogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get svclogs_index_url
    assert_response :success
  end

  test "should get show" do
    get svclogs_show_url
    assert_response :success
  end

  test "should get new" do
    get svclogs_new_url
    assert_response :success
  end

  test "should get edit" do
    get svclogs_edit_url
    assert_response :success
  end

end
