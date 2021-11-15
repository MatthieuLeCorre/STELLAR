Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  ressources :trips, except: '%i[:edit, :delete, :update]' do
    ressources :bookings, only: '%i[:new, :create]'
    ressources :dashboard, only: '%i[:show]'
  end
end
