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

  resources :reviews, only: [:show, :index, :edit, :update]

  get '/lucky', to: 'campsites#lucky'
  get '/about', to: 'application#about'
  
  get '/signup', to: 'users#new', as: "signup"
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new', as: "login"
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  get '/auth/facebook/callback' => 'sessions#FBcreate' 

end 