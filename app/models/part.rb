class Part < ApplicationRecord
  has_many :car_parts
  has_many :cars, through: :car_parts
end
