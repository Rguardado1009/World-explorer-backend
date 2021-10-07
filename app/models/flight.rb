class Flight < ApplicationRecord
    belongs_to :airline
    belongs_to :user
    has_many :reviews
end
