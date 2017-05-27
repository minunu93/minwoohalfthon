Rails.application.routes.draw do
  root "dinings#home"
  get 'dinings/home' => 'dinings#home'
  resources :users
  resources :comments
  resources :dinings

end
