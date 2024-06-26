Rails.application.routes.draw do
  get 'static_pages/about'
  get 'pages/about'

  namespace :admin do
    resources :orders
    resources :products do
      resources :stocks
    end
    resources :categories
  end
  devise_for :admins

  authenticated :admin do
    root to: "admin#index", as: :admin_root
  end

  get "admin" => "admin#index"
  get "cart" => "carts#show"
  post "/checkouts" => "checkouts#create"
  get '/success', to: 'checkouts#success'
  get '/cancel', to: 'checkouts#cancel'
  post "webhooks" => "webhooks#stripe"
  get '/search', to: 'products#search', as: 'search_products'
  get '/sobre', to: 'static_pages#about', as: 'about'

  resources :categories, only: [:show]
  resources :products, only: [:show, :index]

  root "home#index"
end
