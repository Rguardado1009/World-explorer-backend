class AirlineSerializer < ActiveModel::Serializer
    attributes :id, :airline_name, :description, :headquarters, :bag_information, :founded, :logo, :likes, :dislikes
    has_many :flights
  end
  