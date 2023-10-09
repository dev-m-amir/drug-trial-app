Rails.application.routes.draw do
  # Defines the root path route ("/")
  root "home#index"

  mount Sidekiq::Web => '/sidekiq'
end
