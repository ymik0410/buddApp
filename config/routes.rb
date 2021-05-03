Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :goals, only: :index
  resources :buddyships, only: [:new, :create, :show] do
    resources :messages, only: :create
  end
  resources :users, only: [:edit, :update, :show] do
    resources :histories, only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
