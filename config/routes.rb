Rails.application.routes.draw do
  
  devise_for :users, controllers: { omniauth_callbacks: 'oauth_callbacks' }
  
  namespace :users do
    resource :profile, only: [:edit, :update], controller: :profile
  end
  
  namespace :admin do
    resources :posts
  end
  
  resources :posts, only: [:index, :show]
  root 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
