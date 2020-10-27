Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #sessions login and sign up
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
 
  resources :doctors, only: [:show, :index]
  resources :users

  # get '/auth/google_oauth2/callback', to: 'sessions#omniauth'
  get '/auth/:provider/callback', to: 'sessions#omniauth'
  
  #doctor's reviews
  resources :doctors do
    # nested resource for reviews
    resources :reviews

  end

  # resources :users do
  #   resources :doctors, only: [:index]
  # end

  root 'doctors#index'
end
