class Course < ApplicationRecord
  has_many :course_registry
  validates :title, presence: true, length: { maximum: 300 }, uniqueness: true
end
