class AddDifficultyRefToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :difficulty, foreign_key: true
  end
end
