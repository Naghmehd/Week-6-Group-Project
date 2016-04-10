== README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

routes:

https://group-project-movie-tiy.herokuapp.com/

``
api_movie_upvote_movies_path	POST	/api/movies/:movie_id/upvotes/:movie_id(.:format)	api/upvotes#create_upvote
api_movie_upvotes_path	GET	/api/movies/:movie_id/upvotes(.:format)	api/upvotes#index
POST	/api/movies/:movie_id/upvotes(.:format)	api/upvotes#create
new_api_movie_upvote_path	GET	/api/movies/:movie_id/upvotes/new(.:format)	api/upvotes#new
edit_api_movie_upvote_path	GET	/api/movies/:movie_id/upvotes/:id/edit(.:format)	api/upvotes#edit
api_movie_upvote_path	GET	/api/movies/:movie_id/upvotes/:id(.:format)	api/upvotes#show
PATCH	/api/movies/:movie_id/upvotes/:id(.:format)	api/upvotes#update
PUT	/api/movies/:movie_id/upvotes/:id(.:format)	api/upvotes#update
DELETE	/api/movies/:movie_id/upvotes/:id(.:format)	api/upvotes#destroy
api_movies_path	GET	/api/movies(.:format)	api/movies#index
POST	/api/movies(.:format)	api/movies#create
new_api_movie_path	GET	/api/movies/new(.:format)	api/movies#new
edit_api_movie_path	GET	/api/movies/:id/edit(.:format)	api/movies#edit
api_movie_path	GET	/api/movies/:id(.:format)	api/movies#show
PATCH	/api/movies/:id(.:format)	api/movies#update
PUT	/api/movies/:id(.:format)	api/movies#update
DELETE	/api/movies/:id(.:format)	api/movies#destroy
``

https://group-project-movie-tiy.herokuapp.com/api/movies/



Please feel free to use a different markup language if you do not plan to run
<tt>rake doc:app</tt>.
