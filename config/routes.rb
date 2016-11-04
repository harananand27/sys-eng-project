Rails.application.routes.draw do
  root 'sessions#new'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :users
  resources :sessions
  resources :citations

end
