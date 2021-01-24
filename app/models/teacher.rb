class Teacher < ApplicationRecord
  has_many :course_registry
  has_many :active_tearcher_votes, class_name: "TeacherVote",
                                   foreign_key: "voter_id"
  has_many :passive_tearcher_votes, class_name:  "TeacherVote",
                                    foreign_key: "voted_id"
  has_many :voting, through: :active_tearcher_votes, source: :voted
  has_many :voters, through: :passive_tearcher_votes, source: :voter
  before_save { email.downcase! }
  validates :name, presence: true, length: { maximum: 100 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: true
                    
  def vote(other_teacher)
    voting << other_teacher
  end

  def voting?(other_teacher)
    voting.include?(other_teacher)
  end
  
end
