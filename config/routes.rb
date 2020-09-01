Rails.application.routes.draw do
  root 'articles#search'
  devise_for :users

  resources :users, only: :show
  resources :articles do
    collection do 
      get 'search'
    end
  end
end