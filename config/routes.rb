Rails.application.routes.draw do
  resources :employees
  devise_for :users
  root 'home#index'
  get '/widget' , to:"home#widget"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
