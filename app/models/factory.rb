class Factory < ActiveRecord::Base
  # ajkafjkldjfkldsjfkldjfkldsjflksajl
  has_many :cars
  has_many :parts, :through => :cars
end
