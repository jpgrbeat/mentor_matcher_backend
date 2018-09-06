class User < ApplicationRecord
  has_many :mentor_matches, class_name: 'Match', foreign_key: 'mentee_id'
  has_many :mentee_matches, class_name: 'Match', foreign_key: 'mentor_id'

  has_many :mentors, through: :mentor_matches
  has_many :mentees, through: :mentee_matches
  has_many :user_skills

end
