Rails.application.routes.draw do

  root 'posts#index'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  get 'posts/index'
  
  get 'posts/new'

  get 'posts/create'

  get 'posts/update'

  get 'posts/delete'

end
