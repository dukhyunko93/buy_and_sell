Rails.application.routes.draw do

  get root 'welcome#home'
  get '/login' => 'welcome#login'

  resources :products
  resources :pending_carts
  resources :purchased_items
  resources :reviews
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
