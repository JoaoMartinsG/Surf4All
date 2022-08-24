Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/dashboard', to: 'pages#dashboard'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :boards, only: %i[new create show index] do
    resources :bookings, only: %i[new create] do
      member do
        patch :accept
        patch :decline
      end
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
