# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movies = [
  ["Pandemic", "Action and Adventure", "http://www.flickeringmyth.com/wp-content/uploads/2016/02/Pandemic-2016-Movie-Poster-600x889.jpg"],
  ["The Legend of Tarzan", "Action and Adventure", "https://pbs.twimg.com/media/CV5d2b8WwAEB0It.jpg"],
  ["Jason Bourne", "Action and Adventure", "http://cdn.movieweb.com/img.site/PH08l2cLp7dQ28_1_l.jpg"],
  ["Suicide Squad", "Action and Adventure", "https://pbs.twimg.com/media/CbR-y55VAAAhXQi.jpg:large"],
  ["Criminal", "Action and Adventure", "http://ia.media-imdb.com/images/M/MV5BMTg0ODc4Mzk2OF5BMl5BanBnXkFtZTgwNDk2MDkyODE@._V1_UY1200_CR90,0,630,1200_AL_.jpg"],
  ["Huntsman", "Action and Adventure", "http://cdn.collider.com/wp-content/uploads/2015/11/emily-blunt-the-huntsman-ice-queen-poster.jpg"],
  ["Sausage Party", "Comedy", "http://www.tikiwebgroup.com/2queue/wp-content/uploads/sites/6/2016/03/6dq9lx36fK5b9uG4uycTBpt4w3x.jpg"],
  ["Ghostbusters", "Comedy", "http://ia.media-imdb.com/images/M/MV5BNzAzODQ1NTk4OF5BMl5BanBnXkFtZTgwODIwOTIwODE@._V1_UY1200_CR90,0,630,1200_AL_.jpg"],
  ["Neighbors 2: Sorority Rising", "Comedy", "https://4.bp.blogspot.com/-BHJSsBDcogk/VufuFzfvxJI/AAAAAAAACg0/1079Byy0fnEL0mqzInp_jfia58Hlr1cFg/s1600/Neighbors-2.jpg"],
  ["Nine Lives", "Comedy", "http://www.fatmovieguy.com/wp-content/uploads/2016/01/Nine-Lives-Movie-Poster-640x948.jpg"],
  ["The Brothers Grimsby", "Comedy", "http://i2.wp.com/teaser-trailer.com/wp-content/uploads/grimsby.jpg"],
  ["Central Intelligence", "Comedy", "http://cdn2-www.comingsoon.net/assets/uploads/gallery/central-intelligence/centralintelligencesmall.jpg"],
  ["The Jungle Book", "Family", "http://www.flickeringmyth.com/wp-content/uploads/2015/08/JBPoster-720x1066.jpg"],
  ["Finding Dory", "Family", "http://i.jeded.com/i/finding-dory.33715.jpg"],
  ["Ratchet and Clank", "Family", "https://c2.staticflickr.com/6/5325/16987797004_8dcc7c071d_b.jpg"],
  ["The BFG", "Family", "http://ia.media-imdb.com/images/M/MV5BMjI5MjI4NTEzOF5BMl5BanBnXkFtZTgwNjM2Nzg3NzE@._V1_UY1200_CR90,0,630,1200_AL_.jpg"],
  ["Alice Through the Looking Glass", "Family", "http://cdn-static.denofgeek.com/sites/denofgeek/files/styles/insert_main_wide_image/public/4/60//alice_through_the_looking_glass_1.jpg?itok=BRYc9TMY"],
  ["Ice Age: Collision Course", "Family", "http://s3.foxfilm.com/foxmovies/production/films/116/images/posters/463-film-page-large.jpg"],
  ["Captain America: Civil War", "Sci-Fi", "http://www.shockya.com/news/wp-content/uploads/captain-america-civil-war-movie-poster.jpg"],
  ["Rogue One: A Star Wars Story", "Sci-Fi", "http://images-cdn.moviepilot.com/images/c_fill,h_960,w_640/t_mp_quality/t8eycrdols7brmwlgvgg/will-rogue-one-be-the-gritty-star-wars-movie-we-have-been-waiting-for-rogue-one-a-star-w-918614.jpg"],
  ["X-men: Apocalypse", "Sci-Fi", "http://www.movienewz.com/img/films/x-men-apocalypse-poster.jpg"],
  ["Star Trek Beyond", "Sci-Fi", "https://s-media-cache-ak0.pinimg.com/736x/fb/f5/fb/fbf5fbb9dc184b9d6011463637c12222.jpg"],
  ["Independence Day: Resurgence", "Sci-Fi", "https://moviehighlight.files.wordpress.com/2015/11/poster-film-independence-day-resurgence.jpg"],
  ["Assassin's Creed", "Sci-Fi", "http://orig13.deviantart.net/a165/f/2013/317/b/1/assassins_creed___the_movie_poster__selfmade__by_mastersebix-d6u3s7w.jpg"]
]

movies.each do |title, genre, url|
  movie = Movie.create(title: title,
              genre: genre,
              url: url)
              rand(1..5).times do
                            Upvote.create!(movie_id: movie.id)
                end
              end
