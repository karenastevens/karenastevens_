Rails.application.routes.draw do
  root 'static_pages#home'
  get    '/about',      to: 'static_pages#about'
  get    '/portfolio',  to: 'static_pages#portfolio'
  get    '/blog',       to: 'posts#index'
  get    '/contact',    to: 'messages#new'
  post   '/contact',    to: 'messages#create'
  get    '/login',      to: 'sessions#new'
  post   '/login',      to: 'sessions#create'
  delete '/logout',     to: 'sessions#destroy'
  resources :users
  resources :posts
  resources :messages, only: [:new, :create]
end
