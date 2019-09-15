class Factory < ActiveRecord::Base
  has_many :cars
  has_many :parts, :through => cars
end
