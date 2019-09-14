Rails.application.routes.draw do

  resources :articles
  resources :blog, only: [:index, :show]
  resources :charges, only: [:new, :create]
  resources :donors
  resources :visitors do
    collection do
      get 'thanks'
    end
  end

  get 'dashboard', to: "dashboard#index"

  devise_for :users
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
