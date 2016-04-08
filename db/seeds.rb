# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movies = ["Batman","Spiderman","Lulu","Amalie","Pets"]

20.times do
  user = User.create!(name: Faker::Name.name,
                      username: Faker::Internet.user_name,
                      password: Faker::Internet.password,
                      )
                  end

  5.times do
    movie = Movie.create!(title: movies.pop
                          user_id: rand(1..20))

      rand(1..5).times do
                    Upvote.create!(movie_id: movie.id)

          rand(1..5).times do
                    Downvote.create!(movie_id: movie.id)
          end
      end
  end
