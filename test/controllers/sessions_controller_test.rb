require 'test_helper'

class SessionsControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @teacher = teachers(:test_teacher)
  end
  
  test "should get login" do
    get login_url(:user_id => @teacher.id)
    assert_response :found
  end
  
end