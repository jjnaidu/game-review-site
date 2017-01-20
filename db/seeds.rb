User.delete_all
Favorite.delete_all
Game.delete_all

User.create!(first_name: "Jay", last_name: "Naidu", email: "jnaidu@mail.com", password: "password")

Game.create!(name: "Final Fantasy XV", rating: 90)
Game.create!(name: "Watch Dogs 2", rating: 70)
Game.create!(name: "Pokemon Moon", rating: 85)
Game.create!(name: "Pokemon Y", rating: 85)
Game.create!(name: "The Last Guardian", rating: 90)
Game.create!(name: "Assassin's Creed Syndicate", rating: 60)

Favorite.create!(user_id: 1, game_id: 1)
