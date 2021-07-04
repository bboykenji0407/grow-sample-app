require 'test_helper'

class Best16sControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get best16s_index_url
    assert_response :success
  end

  test "should get new" do
    get best16s_new_url
    assert_response :success
  end

  test "should get create" do
    get best16s_create_url
    assert_response :success
  end

  test "should get show" do
    get best16s_show_url
    assert_response :success
  end

end
