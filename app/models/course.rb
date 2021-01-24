class Course < ApplicationRecord
  has_many :course_registry
  has_many :course_votes
  has_many :course_voters, through: :course_votes, source: :teacher
  validates :title, presence: true, length: { maximum: 300 }, uniqueness: true
end
