class MatchSerializer < ActiveModel::Serializer
  attributes :id, :mentor_id, :mentee_id
end
