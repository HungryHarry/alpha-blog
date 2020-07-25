Rails.application.routes.draw do
  root 'pages#home'
  get 'about', to: 'pages#about'
  # resources :articles , only: [:show, :index, :new, :create, :update, :edit, :destroy]
  # upper solution includes all routes, so it can be displayed like below.
  resources :articles
end
