Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :votes, only: [:create]
  resources :states, only: [:show, :index]
  resources :concerns do
  	resources :comments
  end
  resources :users, only: [:show, :destroy]
  resources :sessions
  get '/state/concerns', to: 'states#show'
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  get '/auth/facebook/callback', to: 'sessions#create'
  get '/searches', to: 'searches#index'
end
