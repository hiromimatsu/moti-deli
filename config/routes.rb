Rails.application.routes.draw do
  devise_for :users
  get 'articles/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "articles#index"

  resources :areas, only: :index
  resources :articles, only: [:index, :new, :create, :show] do
      collection do
        get 'search'
      end
  end
  resources :users, only: :show
  
end