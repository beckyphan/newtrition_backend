Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :foods, only: [:index]
      resources :nutrients, only: [:index]
      resources :dailylogs, only: [:index]
    end
  end
end
