class Match < ApplicationRecord
  belongs_to :mentee, class_name: 'User'
  belongs_to :mentor, class_name: 'User'

  validates :mentor_id, uniqueness: {scope: :mentee_id }
end
