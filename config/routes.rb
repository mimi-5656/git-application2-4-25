Rails.application.routes.draw do

  root to:"homes#top"
  devise_for :users

  get 'homes/top'
  get 'homes/about' => "homes#about",as:"about"

  resources :books, only: [:new, :index, :show, :create, :destroy]
  resources :users, only: [:show, :edit, :update]
end
