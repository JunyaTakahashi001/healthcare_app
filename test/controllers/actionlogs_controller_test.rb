require 'test_helper'

class ActionlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get actionlogs_index_url
    assert_response :success
  end

  test "should get show" do
    get actionlogs_show_url
    assert_response :success
  end

  test "should get new" do
    get actionlogs_new_url
    assert_response :success
  end

  test "should get edit" do
    get actionlogs_edit_url
    assert_response :success
  end

end
