require 'test_helper'

class MakeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save make without name" do
    make = Make.new
    assert_not make.save, "should not save make without name"
  end

  test "should not save make without country" do
    make = Make.new
    assert_not make.save, "should not save make without country"
  end
end
