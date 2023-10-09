# frozen_string_literal: true

Rails.application.routes.draw do
  root 'volunteers#new'

  resources :volunteers, only: [:create]
  get 'thanks', to: 'volunteers#thanks'

  mount Sidekiq::Web => '/sidekiq'
end
