Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  root 'static_pages#home'
  get    '/about',      to: 'static_pages#about'
  get    '/portfolio',  to: 'static_pages#portfolio'
  get    '/blog',       to: 'posts#index'
  get    '/contact',    to: 'static_pages#contact'
  get    '/login',      to: 'sessions#new'
  post   '/login',      to: 'sessions#create'
  delete '/logout',     to: 'sessions#destroy'
  resources :users
  resources :posts
end
