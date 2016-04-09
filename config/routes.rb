Rails.application.routes.draw do

  namespace :api do
    resources :movies do
      post '/upvotes/:movie_id', to: 'upvotes#create_upvote', as: 'upvote_movies'
      resources :upvotes
    end
  end

end
