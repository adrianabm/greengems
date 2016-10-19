Rails.application.routes.draw do
  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  get "/pages/:page" => "pages#show"

  get 'pages/home'

  root 'products#index'

  post '/add_to_cart/:product_id' => 'cart#add_to_cart', :as => 'add_to_cart'

  resources :profiles, only: [:new, :edit, :create, :update]
  resources :products do
    collection do
      get :atoz
      get :ztoa
      get :priceup
      get :pricedown
    end
  end
  resources :photos
  resources :order_items
  resource  :cart, only: [:show]
  resources :checkout
  resources :charges
  resources :pages
  resources :shared

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
