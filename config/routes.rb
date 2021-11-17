Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :trips do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, except: [:index, :new, :create] do
    get '/payment', to: 'bookings#payment'
    get '/payment/success', to: 'bookings#payment_confirm'
  end

  get '/dashboard', to: 'pages#dashboard'
end
