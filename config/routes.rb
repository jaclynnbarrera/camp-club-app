Rails.application.routes.draw do

  get '/', to: 'application#home'

  resources :campsites do
    resources :reviews
    resources :users, only: [:show, :index]
  end
  
  resources :users do 
    resources :campsites,  only: [:show, :index]
    resources :reviews
  end

  resources :reviews
  #remove this one?
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end 