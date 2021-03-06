Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :meals
  resources :orders, only: [:new, :create, :show]

  get 'user_orders/:user_id', to: 'orders#my_orders', as: :my_orders
end
