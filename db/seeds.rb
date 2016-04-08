# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movies = [
  ["Batman", "Superhero"],
  ["Spiderman", "Superhero"],
  ["Amalie", "Drama"],
  ["Zootopia", "Animated"]
]

movies.each do |title, genre|
  Movie.create(title: title,
              genre: genre)
end

20.times do
  user = User.create!(name: Faker::Name.name,
                      username: Faker::Internet.user_name,
                      password: Faker::Internet.password,
                      )
                  end

      rand(1..5).times do
                    Upvote.create!(movie_id: movie.id)

          rand(1..5).times do
                    Downvote.create!(movie_id: movie.id)
          end
      end
