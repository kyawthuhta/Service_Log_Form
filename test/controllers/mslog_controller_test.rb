require 'test_helper'

class MslogControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mslog_index_url
    assert_response :success
  end

  test "should get show" do
    get mslog_show_url
    assert_response :success
  end

  test "should get new" do
    get mslog_new_url
    assert_response :success
  end

  test "should get edit" do
    get mslog_edit_url
    assert_response :success
  end

end
