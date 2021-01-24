require 'test_helper'

class TeachersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_teacher_url
    assert_response :success
  end

end
