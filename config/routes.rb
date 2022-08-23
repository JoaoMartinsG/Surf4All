Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get 'dashboard', to: 'pages#dashboard' # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :boards
  # Defines the root path route ("/")
  # root "articles#index"
end
