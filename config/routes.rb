Rails.application.routes.draw do

root to: 'pages#home'
  get 'about', to: 'pages#about'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :offers, only: [ :index, :show ] do
    resources :redemptions, only: [ :create ]
  end
  resources :restaurants, only: [ :index, :show ] do
    resources :check_ins, only: [ :create ]
    resources :reviews, only: :create
    resources :favorites, only: [ :create , :destroy ]



  end
  get "users/favorites", to: "users#favorites", as: "favorite"
  get "users/dashboard", to: "users#dashboard", as: "dashboard"
  # get "/restaurants/:restaurant_id/offers", to: "offers#show", as: "offers"

  devise_for :users,
        controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
