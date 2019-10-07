class Make < ApplicationRecord
  has_many :cars

  validates :name, presence: true, length: { minimum: 4 }
  validates :country, presence: true
end
