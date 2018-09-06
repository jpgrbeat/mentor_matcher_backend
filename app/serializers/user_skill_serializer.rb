class UserSkillSerializer < ActiveModel::Serializer
  attributes :id, :user_id,:skill_id, :number_of_years_experience
  belongs_to :skill
  belongs_to :user
end
