Rails.application.routes.draw do
  devise_for :users
  root to: "homes#index"
  resources :meals
  resources :orders, only: [:new, :create, :show]

  get 'user_orders/:user_id', to: 'orders#my_orders', as: :my_orders
end
