require 'test_helper'

class TeachersControllerTest < ActionDispatch::IntegrationTest
  
  test "should get index" do
    get teachers_url
    assert_response :success
  end
  
  test "should get new" do
    get new_teacher_url
    assert_response :success
  end

end
