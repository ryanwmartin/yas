Rails.application.routes.draw do

  resources :donors
  resources :visitors
  resources :articles
  resources :blog, only: [:index, :show]

  get 'dashboard', to: "dashboard#index"

  devise_for :users
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
