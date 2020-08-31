Rails.application.routes.draw do
  devise_for :users
  root 'articles#search'

  resources :users, only: :show
  resources :articles do
    resources :likes, only: [:create, :destroy]

    collection do 
      get 'search'
      get 'get_category_children', defaults: { format: 'json' }
    end
    
    member do 
      get 'get_category_children', defaults: { format: 'json' }
    end
  end
end