require 'test_helper'

class CarTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  #
  test "should not save car without model" do
    car = Car.new
    assert_not car.save, "should not save car without model"
  end

  test "should not save car without vin" do
    car = Car.new
    assert_not car.save, "should not save car without vin"
  end
end
