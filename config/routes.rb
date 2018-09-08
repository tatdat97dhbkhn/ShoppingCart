Rails.application.routes.draw do
  root "static_pages#home"
  get "/bills/:id", to: "bill_details#add_to_cart"
  get "/filter_product/:id", to: "products#filter_product"
  resources :categories
  resources :products
  resources :bill_details
end
