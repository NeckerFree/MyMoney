Rails.application.routes.draw do
  root to: 'home#index'
  devise_for :users
  # get 'home/index'
  

  # resources :users, only: [:index, :show] do
  #   resources :posts, only: [:index, :show, :new, :create] do
  #     resources :comments, only: [:new, :create]
  #     resources :likes, only: [:create]
  #   end
  # end
 end
