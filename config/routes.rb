Rails.application.routes.draw do
  root 'volunteers#new'

  resources :volunteers, only: [:create]

  mount Sidekiq::Web => '/sidekiq'
end
