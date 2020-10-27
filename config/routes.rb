Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :lessons do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:index]
  end
  resources :bookings, only: [:index, :destroy] do
    resources :reviews, only: [:new, :create]
  end
  get '/profile', to: 'pages#profile', as: 'profile'
  # new controller profile for the
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
