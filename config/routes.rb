Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :buddyships, only: [:new, :create, :show]
  resources :users, only: [:edit, :update, :show] do
    resources :histories, only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
