Rails.application.routes.draw do
  
  devise_for :users
  # devise_scope :user do
  #   get '/users/sign_out' => 'devise/sessions#destroy'
  # end
  resources :users
  
  resources :categories do
    resources :tradings
  end  
  root 'home#index'
end
