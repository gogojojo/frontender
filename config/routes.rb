Rails.application.routes.draw do
  resources :posts
  get '/' => 'posts#index'
  get '/logout' => 'sessions#destroy'
end
