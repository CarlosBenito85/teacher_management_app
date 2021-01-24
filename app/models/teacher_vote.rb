class TeacherVote < ApplicationRecord
  belongs_to :voter, class_name: "Teacher"
  belongs_to :voted, class_name: "Teacher"
  validates :voter_id, presence: true
  validates :voted_id, presence: true
end
