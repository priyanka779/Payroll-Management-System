Rails.application.routes.draw do
  get 'departments/index'
  resources :employees
  resources :hrs
  devise_for :users
<<<<<<< HEAD
  root 'home#index' 
=======
  root 'home#index'
  get '/widget' , to:"home#widget"
>>>>>>> master
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
