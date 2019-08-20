Rails.application.routes.draw do
  get 'users/show', to: 'users#show'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :bookings, only: [:index, :show, :destroy, :update] do
    resources :reviews, only: [:new, :create, :index, :show]
  end

  resources :chefs, only: [:create, :new, :index, :show, :destroy, :update] do
    resources :bookings, only: [:create, :new]
  end

  resources :users, only: [:show] do
    resources :bookings, only: [:index, :show]
  end
end

