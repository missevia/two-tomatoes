Rails.application.routes.draw do
  get 'users/show'
  root to: 'pages#home'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'users/show', to: 'users#show'

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

