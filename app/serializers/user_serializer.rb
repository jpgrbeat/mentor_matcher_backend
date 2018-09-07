class UserSerializer < ActiveModel::Serializer
  attributes :id,:name,:job_title,:type_of,:location,:bio,:email
  has_many :skills
  has_many :mentor_matches 
end
