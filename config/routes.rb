Rails.application.routes.draw do
  resources :slider_tops
  resources :slider_restaurants
  resources :c_restaurants
  devise_for :admins
  resources :sliders
  resources :slider_principals
  resources :slider_bells
  resources :c_bells
  resources :slider_resta
  resources :slider_servs
  resources :slider_depos
  resources :c_depos
  resources :c_servs
  resources :c_resta
  devise_for :users
  devise_for :views
  resources :slider_dentals
  resources :estandars
  resources :inicios
  resources :premia
  resources :newsletters
  resources :estandar_destacados
  resources :slider_categoria
  resources :slider_principals
  resources :users
  resources :institucions do
    resources :users
  end
  resources :c_dentals
  resources :vermas
  resources :indices

  root 'inicios#index'




end
