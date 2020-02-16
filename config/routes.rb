Rails.application.routes.draw do
  get 'products/index'
  get 'products/show'
  devise_for :users
  get 'top/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "top#index"
end
