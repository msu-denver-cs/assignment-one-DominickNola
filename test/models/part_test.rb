require 'test_helper'

class PartTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "should not save part without title" do
    part = Part.new
    assert_not part.save, "should not save part without title"
  end

end
