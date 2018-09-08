Rails.application.routes.draw do
  root "static_pages#home"
  get "/bills/:id", to: "bill_details#add_to_cart"
  get "/filter_product/:id", to: "products#filter_product"
  get "/payment", to: "bills#details"
  post "/payment", to: "bills#payment"
  resources :categories
  resources :products
  resources :bill_details
  resources :bills
end
