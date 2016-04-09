Rails.application.routes.draw do

  namespace :api do
    resources :movies do
      post '/upvotes/:link_id', to: 'upvotes#create_upvote', as: 'upvote_link'
      resources :upvotes
    end
  end

end
