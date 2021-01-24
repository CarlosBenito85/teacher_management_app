class CourseRegistry < ApplicationRecord
  belongs_to :teacher
  belongs_to :course
  validates :teacher_id, presence: true
  validates :course_id, presence: true
end
