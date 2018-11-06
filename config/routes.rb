Rails.application.routes.draw do
  resources :destroys
  resources :diets
  devise_for :users
  resources :recipes
  root 'recipes#index'
end
