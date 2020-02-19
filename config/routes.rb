Rails.application.routes.draw do
  devise_for :users
  get 'top/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "top#index"

  resources :users do
    member do
      get :info
    end
  end
  resources :products, only: [:index, :show]
end
