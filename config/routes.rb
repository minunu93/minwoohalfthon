Rails.application.routes.draw do
  root "dinings#home"
  resources :users
  resources :comments
  resources :dinings
  
  get 'sessions/new'
  post 'sessions/create'
  get 'sessions/error'
  get 'sessions/destroy'
end
