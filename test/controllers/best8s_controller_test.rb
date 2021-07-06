require 'test_helper'

class Best8sControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get best8s_new_url
    assert_response :success
  end

  test "should get show" do
    get best8s_show_url
    assert_response :success
  end

end
