Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  #sessions login and sign up
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
 
  resources :doctors, only: [:show, :index]
  resources :users, only: [:new]
  resources :reviews
  
  #doctor's reviews
  resources :doctors do
    # nested resource for reviews
    resources :reviews, only: [:index, :new]
  end
end
