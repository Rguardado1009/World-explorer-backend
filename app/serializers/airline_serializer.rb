class AirlineSerializer < ActiveModel::Serializer
    attributes :id, :airline_name, :description, :headquarters, :bag_information, :founded
    has_many :flights
  end
  