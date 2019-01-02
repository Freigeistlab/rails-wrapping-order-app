Rails.application.routes.draw do
  resources :order_items
  resources :orders
  resources :order_statuses
  resources :products
  resources :product_groups

  root to: "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
