Rails.application.routes.draw do
  devise_for :users
  get 'top/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "top#index"

  resources :users, only: [:new, :create, :index, :show, :edit, :destroy]
  resources :products, only: [:index, :show]
end
