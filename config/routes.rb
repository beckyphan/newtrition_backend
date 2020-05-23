Rails.application.routes.draw do
  get 'dris/index'
  get 'dris/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:index, :create]
  resources :dris, only: [:index, :create]

  get '/login', to: 'sessions#login'
  get '/logout', to: 'sessions#logout'

  namespace :api do
    namespace :v1 do
      resources :foods, only: [:index, :create, :update, :show, :destroy]
      resources :nutrientprofiles, only: [:index, :create, :update, :show, :destroy]
      resources :dailylogs, only: [:index, :create, :update, :show, :destroy]
    end
  end
end
