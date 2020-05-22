Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:create, :update, :show, :destroy]

  get '/login', to: 'sessions#login'
  get '/logout', to: 'sessions#logout'

  namespace :api do
    namespace :v1 do
      resources :foods, only: [:index]
      resources :nutrients, only: [:index]
      resources :dailylogs, only: [:index]
    end
  end
end
