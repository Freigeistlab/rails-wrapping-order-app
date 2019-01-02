Rails.application.routes.draw do
  resources :order_statuses
  resources :products
  resources :product_groups
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
