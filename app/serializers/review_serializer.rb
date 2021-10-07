class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :body, :user_id, :flight_id
  belongs_to :user
end
