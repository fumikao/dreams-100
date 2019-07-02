require 'test_helper'

class DreamControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dream_index_url
    assert_response :success
  end

end
