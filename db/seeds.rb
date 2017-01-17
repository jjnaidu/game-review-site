User.delete_all
Favorite.delete_all
Game.delete_all

User.create!(first_name: "Jay", last_name: "Naidu", email: "jnaidu@mail.com", password: "password")

Game.create!(name: "Final Fantasy XV")
Game.create!(name: "Watch Dogs 2")
Game.create!(name: "Pokemon Moon")
Game.create!(name: "The Last Guardian")
Game.create!(name: "Assassin's Creed Syndicate")

Favorite.create!(user_id: 1, game_id: 1)
Favorite.create!(user_id: 1, game_id: 3)
