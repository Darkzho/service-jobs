Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :services do
    resources :bookings, only: [:create, :new] do
    end
  end
  resources :users, only: [:index, :show, :menu] do 
    resources :reviews, only: [:index]
  end 
  resources :bookings, only: [:show] do
    resources :reviews, only: [:new, :create]
  end 
  resources :bookings, only: :index
end

