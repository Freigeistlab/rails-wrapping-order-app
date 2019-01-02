Rails.application.routes.draw do
  get 'pages/home'
  resources :order_items
  resources :orders
  resources :order_statuses
  resources :products
  resources :product_groups

  root "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
