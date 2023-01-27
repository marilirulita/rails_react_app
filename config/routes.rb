Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "pages#index"
  resources :users, param: :slug
  resources :reviews, only: [:create, :destroy]

  get '*path', to: 'pages#index', via: :all
end
