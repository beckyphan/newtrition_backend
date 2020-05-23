require 'test_helper'

class DrisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dris_index_url
    assert_response :success
  end

  test "should get create" do
    get dris_create_url
    assert_response :success
  end

end
