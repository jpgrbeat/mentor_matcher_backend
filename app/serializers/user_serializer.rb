class UserSerializer < ActiveModel::Serializer
  attributes :id,:name,:job_title,:type_of,:location,:bio,:email
  has_many :user_skills
  has_many :skills
  has_many :mentee_matches
  has_many :mentor_matches
end
