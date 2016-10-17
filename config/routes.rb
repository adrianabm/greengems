Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get 'carts/show'

  get 'pages/home'

  root 'products#index'

  resources :profiles, only: [:new, :edit, :create, :update]
  resources :products, only: [:show, :index]
  resources :photos
  resources :order_items
  resource :cart, only: [:show]
  resources :checkout

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
