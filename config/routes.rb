Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'
  
  resources :users, only: :show
  resources :areas, only: [:new, :create]
  resources :articles do
    resources :likes, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
end