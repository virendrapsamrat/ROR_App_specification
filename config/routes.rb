Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'users', to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :companies
    resources :cities
    resources :states
    resources :countries
    resources :places
    resources :nodes
    resources :images
    resources :regions
    resources :user_regions
    resources :user_roles
    resources :users
    resources :signups
  root 'welcome#index'
 end
