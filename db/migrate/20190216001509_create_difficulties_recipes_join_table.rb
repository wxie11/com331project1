class CreateDifficultiesRecipesJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :difficulties, :recipes do |t|
      t.index :difficulty_id
      t.index :recipe_id
    end
  end
end
