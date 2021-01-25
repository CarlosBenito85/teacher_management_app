class Teacher < ApplicationRecord
  has_many :course_registry
  has_many :active_tearcher_votes, class_name: "TeacherVote",
                                   foreign_key: "voter_teacher_id"
  has_many :passive_tearcher_votes, class_name:  "TeacherVote",
                                    foreign_key: "voted_teacher_id"
  has_many :vouted_teachers, through: :active_tearcher_votes, source: :voted_teacher
  has_many :teacher_voters, through: :passive_tearcher_votes, source: :voter_teacher
  has_many :course_votes
  has_many :voted_courses, through: :course_votes, source: :course
  before_save { email.downcase! }
  validates :name, presence: true, length: { maximum: 100 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
                    
  def vote_theacher(other_teacher)
    vouted_teachers << other_teacher
  end

  def voted_teacher?(other_teacher)
    vouted_teachers.include?(other_teacher)
  end
                    
  def vote_course(course)
    voted_courses << course
  end

  def voted_course?(course)
    voted_courses.include?(course)
  end
  
end
