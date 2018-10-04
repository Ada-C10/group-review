Rails.application.routes.draw do
  root to: 'cakes#index'

  resources :cakes, only: [:index] do
    post 'assign'
  end

  resources :chefs, only: [:new, :create]
end
