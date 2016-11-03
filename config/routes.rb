Rails.application.routes.draw do
  root 'sessions#new'

  get 'citations/new'

  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions
  resources :citations

  resources :welcome
end
