Rails.application.routes.draw do
  root to: 'cakes#index'

  resources :cakes, only: [:index]
end
