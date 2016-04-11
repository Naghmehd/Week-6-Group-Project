# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movies = [
  ["Pandemic", "Action and Adventure", "http://www.flickeringmyth.com/wp-content/uploads/2016/02/Pandemic-2016-Movie-Poster-600x889.jpg", "http://www.imdb.com/title/tt3774802/?ref_=nv_sr_1"],
  ["The Legend of Tarzan", "Action and Adventure", "https://pbs.twimg.com/media/CV5d2b8WwAEB0It.jpg", "http://www.imdb.com/title/tt0918940/?ref_=nv_sr_2"],
  ["Jason Bourne", "Action and Adventure", "http://cdn.movieweb.com/img.site/PH08l2cLp7dQ28_1_l.jpg", "http://www.imdb.com/title/tt4196776/?ref_=nv_sr_1"],
  ["Suicide Squad", "Action and Adventure", "https://pbs.twimg.com/media/CbR-y55VAAAhXQi.jpg:large", "http://www.imdb.com/title/tt1386697/?ref_=nv_sr_1"],
  ["Criminal", "Action and Adventure", "http://ia.media-imdb.com/images/M/MV5BMTg0ODc4Mzk2OF5BMl5BanBnXkFtZTgwNDk2MDkyODE@._V1_UY1200_CR90,0,630,1200_AL_.jpg", "http://www.imdb.com/title/tt3014866/?ref_=nv_sr_3"],
  ["Huntsman", "Action and Adventure", "http://cdn.collider.com/wp-content/uploads/2015/11/emily-blunt-the-huntsman-ice-queen-poster.jpg", "http://www.imdb.com/title/tt2381991/?ref_=nv_sr_1"],
  ["Sausage Party", "Comedy", "http://www.tikiwebgroup.com/2queue/wp-content/uploads/sites/6/2016/03/6dq9lx36fK5b9uG4uycTBpt4w3x.jpg", "http://www.imdb.com/title/tt1700841/?ref_=nv_sr_1"],
  ["Ghostbusters", "Comedy", "http://ia.media-imdb.com/images/M/MV5BNzAzODQ1NTk4OF5BMl5BanBnXkFtZTgwODIwOTIwODE@._V1_UY1200_CR90,0,630,1200_AL_.jpg", "http://www.imdb.com/title/tt1289401/?ref_=nv_sr_1"],
  ["Neighbors 2: Sorority Rising", "Comedy", "https://4.bp.blogspot.com/-BHJSsBDcogk/VufuFzfvxJI/AAAAAAAACg0/1079Byy0fnEL0mqzInp_jfia58Hlr1cFg/s1600/Neighbors-2.jpg", "http://www.imdb.com/title/tt4438848/?ref_=nv_sr_1"],
  ["Nine Lives", "Comedy", "http://www.fatmovieguy.com/wp-content/uploads/2016/01/Nine-Lives-Movie-Poster-640x948.jpg", "http://www.imdb.com/title/tt4383594/?ref_=nv_sr_1"],
  ["The Brothers Grimsby", "Comedy", "http://i2.wp.com/teaser-trailer.com/wp-content/uploads/grimsby.jpg", "http://www.imdb.com/title/tt3381008/?ref_=nv_sr_1"],
  ["Central Intelligence", "Comedy", "http://cdn2-www.comingsoon.net/assets/uploads/gallery/central-intelligence/centralintelligencesmall.jpg", "http://www.imdb.com/title/tt1489889/?ref_=nv_sr_1"],
  ["The Jungle Book", "Family", "http://www.flickeringmyth.com/wp-content/uploads/2015/08/JBPoster-720x1066.jpg", "http://www.imdb.com/title/tt3040964/?ref_=fn_al_tt_1"],
  ["Finding Dory", "Family", "http://i.jeded.com/i/finding-dory.33715.jpg", "http://www.imdb.com/title/tt2277860/?ref_=nv_sr_1"],
  ["Ratchet and Clank", "Family", "https://c2.staticflickr.com/6/5325/16987797004_8dcc7c071d_b.jpg", "http://www.imdb.com/title/tt2865120/?ref_=fn_al_tt_1"],
  ["The BFG", "Family", "http://ia.media-imdb.com/images/M/MV5BMjI5MjI4NTEzOF5BMl5BanBnXkFtZTgwNjM2Nzg3NzE@._V1_UY1200_CR90,0,630,1200_AL_.jpg", "http://www.imdb.com/title/tt3691740/?ref_=fn_al_tt_1"],
  ["Alice Through the Looking Glass", "Family", "http://cdn-static.denofgeek.com/sites/denofgeek/files/styles/insert_main_wide_image/public/4/60//alice_through_the_looking_glass_1.jpg?itok=BRYc9TMY", "http://www.imdb.com/title/tt2567026/?ref_=fn_al_tt_1"],
  ["Ice Age: Collision Course", "Family", "http://s3.foxfilm.com/foxmovies/production/films/116/images/posters/463-film-page-large.jpg", "http://www.imdb.com/title/tt3040964/?ref_=fn_al_tt_1"],
  ["Captain America: Civil War", "Sci-Fi", "http://www.shockya.com/news/wp-content/uploads/captain-america-civil-war-movie-poster.jpg", "http://www.imdb.com/title/tt3498820/?ref_=nv_sr_1"],
  ["Rogue One: A Star Wars Story", "Sci-Fi", "http://images-cdn.moviepilot.com/images/c_fill,h_960,w_640/t_mp_quality/t8eycrdols7brmwlgvgg/will-rogue-one-be-the-gritty-star-wars-movie-we-have-been-waiting-for-rogue-one-a-star-w-918614.jpg", "http://www.imdb.com/title/tt3748528/?ref_=nv_sr_1"],
  ["X-men: Apocalypse", "Sci-Fi", "http://www.movienewz.com/img/films/x-men-apocalypse-poster.jpg", "http://www.imdb.com/title/tt3385516/?ref_=nv_sr_1"],
  ["Star Trek Beyond", "Sci-Fi", "https://s-media-cache-ak0.pinimg.com/736x/fb/f5/fb/fbf5fbb9dc184b9d6011463637c12222.jpg", "http://www.imdb.com/title/tt2660888/?ref_=nv_sr_1"],
  ["Independence Day: Resurgence", "Sci-Fi", "https://moviehighlight.files.wordpress.com/2015/11/poster-film-independence-day-resurgence.jpg", "http://www.imdb.com/title/tt1628841/?ref_=nv_sr_3"],
  ["Assassin's Creed", "Sci-Fi", "http://orig13.deviantart.net/a165/f/2013/317/b/1/assassins_creed___the_movie_poster__selfmade__by_mastersebix-d6u3s7w.jpg", "http://www.imdb.com/title/tt2094766/?ref_=nv_sr_1"]
]

movies.each do |title, genre, url, a|
  movie = Movie.create(title: title,
              genre: genre,
              url: url,
              a: a)
              rand(1..5).times do
                            Upvote.create!(movie_id: movie.id)
                end
              end
