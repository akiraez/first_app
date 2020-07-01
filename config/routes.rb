Rails.application.routes.draw do
  devise_for :users

  root 'homes#top'

  resources :users, only: [:index, :show, :edit, :update]
  resources :relationships, only: [:create, :destroy]
  resources :books, only: [:index, :show, :edit, :update, :create, :destroy] do
  resources :favorites, only: [:create, :destroy]
  resource :book_comments, only: [:create, :destroy]
end
end
