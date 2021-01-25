require 'test_helper'

class CourseRegistryTest < ActiveSupport::TestCase
  
  def setup
    @course_registry = CourseRegistry.new(teacher_id: teachers(:test_teacher).id,
                                          course_id: courses(:test_course).id)
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
  
  test "course_registry should be unique" do
    duplicate_course_registry = @course_registry.dup
    @course_registry.save
    assert_not duplicate_course_registry.valid?
  end
  
end
