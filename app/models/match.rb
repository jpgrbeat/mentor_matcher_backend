class Match < ApplicationRecord
  belongs_to :mentee, class_name: 'User', dependent: :destroy
  belongs_to :mentor, class_name: 'User', dependent: :destroy

  validates :mentor_id, uniqueness: {scope: :mentee_id }
end
