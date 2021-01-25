require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  
  test "should get new" do
    get new_course_url
    assert_response :success
  end

end
