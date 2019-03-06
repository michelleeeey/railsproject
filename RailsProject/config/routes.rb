# frozen_string_literal: true

Rails.application.routes.draw do
  resources :battlegrounds, only: %i[index show]
  resources :players, only: %i[index show]
  resources :teams, only: %i[index show]

  root to: 'battlegrounds#index'
end
