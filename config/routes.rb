Rails.application.routes.draw do


  get '/about', to: 'application#about'

  resources :campsites
  resources :users
  resources :reviews
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
