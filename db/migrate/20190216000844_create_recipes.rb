class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :img_url
      t.text :ingredient
      t.text :direction

      t.timestamps
    end
  end
end