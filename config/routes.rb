Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'signup', to: 'users#new'
  get 'login', to: “sessions#create”
 
  resources :doctors, only: [:show, :index]
  resources :users
 resources :reviews

  resources :doctors do
    resources :reviews
  end
end
