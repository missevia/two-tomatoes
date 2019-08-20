Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :bookings, only: [:index, :show, :destroy, :update] do
    resources :reviews, only: [:new, :create, :index. :show]
  end
  get 'users/show', to: 'users#show'
  resources :chefs do
    resources :bookings, only: [:create, :new]
  end
end

