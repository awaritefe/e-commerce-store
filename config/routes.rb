Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root to: 'pages#home'

  resources :products, only: [:index, :show]
  resources :categories, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  namespace :admin do
    root to: 'products#index'
    resources :products
    resources :categories
  end

end
