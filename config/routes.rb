Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :product, only: [:index, :show]
  resources :category, only: [:show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
