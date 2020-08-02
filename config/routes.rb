Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'

  resources :users, only: :show
  resources :areas, only: [:new, :create]
  resources :articles do
    collection do
      get 'search'
    end
  end
end