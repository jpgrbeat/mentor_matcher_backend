class MatchSerializer < ActiveModel::Serializer
  attributes :id, :mentor_id, :mentee_id
  has_many :users
end
