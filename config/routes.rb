Rails.application.routes.draw do
  devise_for :admins
  namespace :users_backoffice do
    get 'welcome/index'
  end

  devise_scope :user do
    root :to => 'devise/sessions#new'
  end

  resources :battle
  devise_for :users
  resources :bagmons
  resources :types
  resources :bagmons
  resources :types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
