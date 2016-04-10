# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movies = [
  ["Pandemic", "Action and Adventure"],
  ["The Legend of Tarzan", "Action and Adventure"],
  ["Jason Bourne", "Action and Adventure"],
  ["Suicide Squad", "Action and Adventure"],
  ["Criminal", "Action and Adventure"],
  ["Huntsman", "Action and Adventure"],
  ["Sausage Party", "Comedy"],
  ["Ghostbusters", "Comedy"],
  ["Neighbors 2: Sorority Rising", "Comedy"],
  ["Nine Lives", "Comedy"],
  ["The Brothers Grimsby", "Comedy"],
  ["Central Intelligence", "Comedy"],
  ["The Jungle Book", "Family"],
  ["Finding Dory", "Family"],
  ["Ratchet and Clank", "Family"],
  ["The BFG", "Family"],
  ["Alice Through the Looking Glass", "Family"],
  ["Ice Age: Collision Course", "Family"],
  ["Captain America: Civil War", "Sci-Fi"],
  ["Rogue One: A Star Wars Story", "Sci-Fi"],
  ["X-men: Apocalypse", "Sci-Fi"],
  ["Star Trek Beyond", "Sci-Fi"],
  ["Independence Day: Resurgence", "Sci-Fi"]
  ["Assassin's Creed", "Sci-Fi"],
]

movies.each do |title, genre|
  movie = Movie.create(title: title,
              genre: genre)
              rand(1..5).times do
                            Upvote.create!(movie_id: movie.id)
                end
              end
