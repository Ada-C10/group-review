Rails.application.routes.draw do
  get '/', to: 'welcome#index'

  get '/stuff', to: 'welcome#stuff', as: nil
end
