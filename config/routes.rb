Rails.application.routes.draw do
  get 'citations/new'

  resources :users
  resources :sessions
  resources :citations

  root 'sessions#new'
  resources :welcome
end
