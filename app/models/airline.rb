class Airline < ApplicationRecord
    has_many :users
    has_many :reviews
    has_many :reviews, through: :users
    has_many :flights
end
