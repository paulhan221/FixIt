Rails.application.routes.draw do
  
  root to: 'welcome#index'

  resources :votes, only: [:create]

  resources :concerns

  resources :users

  resources :sessions

  get '/login', to: 'sessions#new'

  get '/logout', to: 'sessions#destroy'

  get '/auth/facebook/callback', to: 'sessions#create'


end
