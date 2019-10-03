class Make < ApplicationRecord
  has_many :cars

  validates :name, presence: true
  validates :country, presence: true
end
