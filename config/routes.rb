Rails.application.routes.draw do
  devise_for :users
  get 'articles/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "articles#index"

  resources :articles, only: [:index, :new, :create, :show]
  resources :users, only: :show
  resources :areas, only: :index
end