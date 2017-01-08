Rails.application.routes.draw do
  root 'home#index'
  resources :articles
  resources :settings, only: [:index, :update]
  devise_for :users
  get 'about', to: 'pages#about'
  get 'filtered_articles', to: 'pages#filtered_articles'
end
