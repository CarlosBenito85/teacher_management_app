require 'test_helper'

class TeacherVoteTest < ActiveSupport::TestCase

  def setup
    @teacher_vote = TeacherVote.new(voter_id: teachers(:test_teacher).id,
                                    voted_id: teachers(:test_professor).id)
  end

  test "should be valid" do
    assert @teacher_vote.valid?
  end

  test "should require a voter_id" do
    @teacher_vote.voter_id = nil
    assert_not @teacher_vote.valid?
  end

  test "should require a voted_id" do
    @teacher_vote.voted_id = nil
    assert_not @teacher_vote.valid?
  end

end
