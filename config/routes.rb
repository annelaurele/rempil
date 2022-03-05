Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :shops do
    resources :rentals, only: [:create, :new] do
      get 'qrcode', to: 'rentals#qrcode'
    end
  end
  resources :rentals, only: [:index]
  resources :test

  resources :ratings, only: [:new, :create]
end
