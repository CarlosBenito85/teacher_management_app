require 'test_helper'

class CourseVoteTest < ActiveSupport::TestCase

  def setup
    @course_vote = CourseVote.new(teacher_id: teachers(:test_teacher).id,
                                  course_id: courses(:test_course).id)
  end

  test "should be valid" do
    assert @course_vote.valid?
  end

  test "should require a teacher_id" do
    @course_vote.teacher_id = nil
    assert_not @course_vote.valid?
  end

  test "should require a course_id" do
    @course_vote.course_id = nil
    assert_not @course_vote.valid?
  end
  
  test "course_vote should be unique" do
    duplicate_course_vote = @course_vote.dup
    @course_vote.save
    assert_not duplicate_course_vote.valid?
  end
  
end
