Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :services do
    resources :bookings, only: [:index, :create, :new, :show]
  end
    resources :users, only: [:index, :show] 
    resources :reviews, only: [:index, :show, :new, :create]
end

