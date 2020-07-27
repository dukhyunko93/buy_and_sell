Rails.application.routes.draw do
  resources :products
  resources :pending_carts
  resources :purchased_items
  resources :reviews
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
