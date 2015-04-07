Rails.application.routes.draw do
  
  root to: 'welcome#index'

  resources :votes, only: [:create]

  resources :concerns


  resources :users

end
