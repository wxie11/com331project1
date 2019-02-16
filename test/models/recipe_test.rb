require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test "recipe attributes must not be empty" do
     recipe = Recipe.new
     assert recipe.invalid?
     assert recipe.errors[:title].any?
     assert recipe.errors[:img_url].any?
     assert recipe.errors[:ingredient].any?
     assert recipe.errors[:direction].any?
     assert recipe.errors[:difficulty_id].any?
  end
end
