class Car < ApplicationRecord
  # Sets up the many-to-many
  belongs_to :make
  has_many :car_parts
  has_many :parts, through: :car_parts

  validates :car_model, presence: true
  validates :vin_number, presence: true
end