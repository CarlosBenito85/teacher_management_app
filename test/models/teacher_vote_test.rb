require 'test_helper'

class TeacherVoteTest < ActiveSupport::TestCase

  def setup
    @teacher_vote = TeacherVote.new(voter_teacher_id: teachers(:test_teacher).id,
                                    voted_teacher_id: teachers(:test_professor).id)
  end

  test "should be valid" do
    assert @teacher_vote.valid?
  end

  test "should require a voter_teacher_id" do
    @teacher_vote.voter_teacher_id = nil
    assert_not @teacher_vote.valid?
  end

  test "should require a voted_teacher_id" do
    @teacher_vote.voted_teacher_id = nil
    assert_not @teacher_vote.valid?
  end
  
  test "teacher_vote should be unique" do
    duplicate_teacher_vote = @teacher_vote.dup
    @teacher_vote.save
    assert_not duplicate_teacher_vote.valid?
  end

end
