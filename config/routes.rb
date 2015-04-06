Rails.application.routes.draw do
  resources :posts
  resources :sessions
  get '/' => 'posts#index'
  get '/logout' => 'sessions#destroy'
  get '/login12345678910' => 'sessions#new'
  post '/login' => 'sessions#create'
  get "/upvote" => 'posts#upvote', as: 'upvote'
  get "/downvote" => 'posts#downvote', as: 'downvote'
end
