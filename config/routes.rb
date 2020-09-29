Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 resources :doctors, only: [:show, :index]
  resources :patients
 resources :reviews

  resources :doctors do
    resources :reviews
  end
end
