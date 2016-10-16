Rails.application.routes.draw do
  get 'pages/home'
  root 'products#index'

  resources :profiles, only: [:new, :edit, :create, :update]
  resources :products, only: [:show, :index]
  resources :photos


  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
