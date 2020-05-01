Rails.application.routes.draw do
  devise_for :users
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
  	resource :post_comments, only: [:create, :destroy]
  	resource :favorites, only: [:create, :destroy]
  end
  resources :users, only: [:show, :edit, :update]
  root 'post_images#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
