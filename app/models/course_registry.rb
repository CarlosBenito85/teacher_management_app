class CourseRegistry < ApplicationRecord
  belongs_to :teacher
  belongs_to :course
  validates :teacher_id, presence: true
  validates :course_id, presence: true
  validates_uniqueness_of :teacher_id, :scope => :course_id
end
