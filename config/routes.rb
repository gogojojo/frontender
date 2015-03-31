Rails.application.routes.draw do
  resources :posts
  resources :users 
  resources :sessions
  get '/' => 'posts#index'
  get '/logout' => 'sessions#destroy'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get "/upvote" => 'posts#upvote', as: 'upvote'
end
