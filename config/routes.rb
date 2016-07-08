Rails.application.routes.draw do
  devise_for :empleados
  root "static#main"

  resources :clientes
  resources :disenos
  resources :empleados
  resources :categories
  resources :tamanos
  resources :productos
end
