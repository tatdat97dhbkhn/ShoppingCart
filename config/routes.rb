Rails.application.routes.draw do
  root "static_pages#home"
  resources :categories
  resources :products
end
