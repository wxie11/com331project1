# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Recipe.destroy_all
Difficulty.destroy_all

@easy = Difficulty.create(
  level: 'easy'
)

@moderate = Difficulty. create(
  level: 'moderate'
)

@challenging = Difficulty.create(
  level: 'challenging'
)

Recipe.create!(title: 'Shrimp Paste',
  img_url: 'shrimp_pasta.jpg',
  ingredient: 'Shrimp, Pasta, Butter, Olive Oil, Garlic',
  direction:
    %{<p>
      First cook pasta in boil water for 6-8 minutes. Then
      cook the shrimp with butter, garlic, and oil on a hot
      pan for 3 minutes. Finally put the pasta into the pan,
      cook for 5 mintues.
      </p>},
  difficulty_id: '3')

Recipe.create!(title: 'Poke Bowl',
  img_url: 'poke_bowl.jpg',
  ingredient: 'Tuna, salmon, rice, vinger, soy sauce',
  direction:
    %{<p>
      First mixes the rice with vinger in a bowl. Then place all
      the fish on top of the rice. Finally, put some soy sauce.
      </p>},
  difficulty_id: '2')

Recipe.create!(title: 'Instant Ramen',
  img_url: 'ramen.jpg',
  ingredient: 'Cup noodle, water',
  direction:
    %{<p>
      First boil the water. Then put the boiled water into the cup
      noodle. Wait for 3 minutes!
      </p>},
  difficulty_id: '1')
