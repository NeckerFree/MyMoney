Rails.application.routes.draw do
  
  devise_for :users
  # devise_scope :user do
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  # end
  resources :users
  resources :tradings
  resources :categories
  root 'home#index'
end
