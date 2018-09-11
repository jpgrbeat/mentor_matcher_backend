class UserSkill < ApplicationRecord
  belongs_to :user
  belongs_to :skill

  validates :skill_id, uniqueness: {scope: :user_id }

end
