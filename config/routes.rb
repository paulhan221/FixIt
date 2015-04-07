Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root  'welcome#index'
  get '/login', to: 'sessions#new'
  get '/auth/facebook/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  resources :concerns
  resources :users

end
