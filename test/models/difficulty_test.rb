require 'test_helper'

class DifficultyTest < ActiveSupport::TestCase
  test "difficulty attributes must not be empty" do
     difficulty = Difficulty.new
     assert difficulty.invalid?
     assert difficulty.errors[:level].any?
  end
end
