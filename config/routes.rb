Rails.application.routes.draw do
  devise_for :users
  root 'articles#search'
  
  resources :areas, only: [:new, :create]
  resources :articles do
    resources :likes, only: [:create, :destroy]
    collection do
      get 'search'
      get 'get_category_children', defaults: { format: 'json' }
    end
  end
  resources :users, only: :show
end