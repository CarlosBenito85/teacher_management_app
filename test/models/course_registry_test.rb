require 'test_helper'

class CourseRegistryTest < ActiveSupport::TestCase
  
  def setup
    @teacher = teachers(:test_teacher)
    @course = courses(:test_course)
    @course_registry = CourseRegistry.new(teacher_id: @teacher.id,
                                          course_id: @course.id)
  end
  
  test "should be valid" do
    assert @course_registry.valid?
  end
  
  test "teacher_id should be present" do
    @course_registry.teacher_id = nil
    assert_not @course_registry.valid?
  end

  test "course_id should be present" do
    @course_registry.course_id = nil
    assert_not @course_registry.valid?
  end
  
end
