require 'test_helper'

class ImagesDisplayControllerTest < ActionDispatch::IntegrationTest
  test "should get display" do
    get images_display_display_url
    assert_response :success
  end

end
