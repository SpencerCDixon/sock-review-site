Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  resources :socks, only: [:new, :create, :index]
end
