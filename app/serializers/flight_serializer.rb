class FlightSerializer < ActiveModel::Serializer
  attributes :id, :from, :to, :description, :flight_number, :user_id, :airline_id
  has_many :reviews
end
