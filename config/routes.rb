Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'
  get 'users', to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :companies do
      resources :your_comments do
        resources :likes do
          collection do 
            get 'hilike'
            get 'byelike'
          end
        end
      end
    end
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
    resources :my_user
  root 'welcome#index'
  get 'my/profile', :to => 'users#veer', as: :profile
  get 'my/allprofile', :to => 'users#viru', as: :allprofile
  get 'my/show_all_profile_name', :to => 'my_user#show_all_profile_name', as: :show_all_profile_name
  delete 'my/user_destroy/:my_user_id', :to => 'my_user#user_destroy', as: :user_destroy
  get 'my/show_particular_user_profile/:my_user_id', :to => 'my_user#show_particular_user_profile', as: :show_particular_user_profile
  #get 'companies/:companies_id/dislike', :to =>'likes#dislike' , as: :dislike

 end
