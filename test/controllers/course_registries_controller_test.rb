require 'test_helper'

class CourseRegistriesControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @teacher = teachers(:test_teacher)
    get login_url(:user_id => @teacher.id)
  end
  
  test "should get index" do
    get course_registries_url
    assert_response :success
  end
  
  test "should get new" do
    get new_course_registry_url
    assert_response :success
  end
  
end
