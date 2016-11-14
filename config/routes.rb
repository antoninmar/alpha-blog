Rails.application.routes.draw do
  # Page routes
  root'pages#home'
  get 'about', to: 'pages#about'
  resources :articles

  # Users routes
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
