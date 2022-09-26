Rails.application.routes.draw do

  root to:"homes#top"
  devise_for :users

  get 'home/about' => "homes#about",as:"about"

  resources :books, only: [:new, :index, :show, :create, :edit, :update, :destroy]
  resources :users, only: [:show, :edit, :update, :index]
end
