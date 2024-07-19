Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :notes

  match '/auth/failure', to: 'omniauth#failure', via: [:get, :post]
  match '/auth/:provider/callback', to: 'omniauth#callback', via: [:get, :post]

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  root "notes#index"
end
