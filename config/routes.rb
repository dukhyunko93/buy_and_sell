Rails.application.routes.draw do

  get root 'welcome#home'
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/signup' => 'users#new', as: 'signup'
  get '/products/shoes' => 'products#shoepage', as: 'shoepage'
  get '/products/accessories' => 'products#accessorypage', as: 'accessorypage'
  get '/products/streetwears' => 'products#streetwearpage', as: 'streetwearpage'
  get '/products/my_products' => 'products#my_products', as: 'myproducts'
  get '/search' => 'pages#search', :as => 'search_page'
  resources :products
  resources :pending_carts
  resources :purchased_items
  resources :reviews
  resources :users, except: :new
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
