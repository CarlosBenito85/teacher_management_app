require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  
  def setup
    @course = courses(:test_course)
  end
  
  test "should be valid" do
    assert @course.valid?
  end
  
  test "title should be present" do
    @course.title = ""
    assert_not @course.valid?
  end

  test "title should not be too long" do
    @course.title = "a" * 301
    assert_not @course.valid?
  end
  
end
