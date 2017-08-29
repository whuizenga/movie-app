Rails.application.routes.draw do
  root to: 'films#index'

  resources :films
end
