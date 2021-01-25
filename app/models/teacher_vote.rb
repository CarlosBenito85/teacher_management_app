class TeacherVote < ApplicationRecord
  belongs_to :voter_teacher, class_name: "Teacher"
  belongs_to :voted_teacher, class_name: "Teacher"
  validates :voter_teacher_id, presence: true
  validates :voted_teacher_id, presence: true
  validates_uniqueness_of :voter_teacher_id, :scope => :voted_teacher_id
end
