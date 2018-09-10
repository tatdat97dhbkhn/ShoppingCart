Rails.application.routes.draw do
  root "static_pages#home"
  get "/add_to_cart/:id", to: "cookies#add_to_cart", as: "add_to_cart"
  get "/list_carts", to: "cookies#index"
  get "/filter_products/:id", to: "products#filter_product", as: "filter_product"
  get "/payment", to: "cookies#details"
  delete "/delete_item/:item", to: "cookies#destroy", as: "delete_item"
  get "/update_payment/:payment", to: "bills#update_payment", as: "update_payment"
  resources :categories
  resources :products
  resources :bill_details
  resources :bills
  resources :customers
end
