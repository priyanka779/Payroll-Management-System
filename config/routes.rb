Rails.application.routes.draw do
 
  resources :attandances
  resources :leave_managements do
    post "/accept", to: "leave_managements#accept"
    post "/decline", to: "leave_managements#decline"
  end
  get 'departments/index'
  resources :employees
  resources :hrs
  devise_for :users
  root 'home#index'
  get '/widget' , to:"home#widget"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
