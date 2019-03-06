# frozen_string_literal: true

Rails.application.routes.draw do
  resources :pages
  resources :battlegrounds, only: %i[index show]
  resources :players, only: %i[index show]
  resources :teams, only: %i[index show]

  get 'search_results', to: 'search#results', as: 'search_results'

  root to: 'battlegrounds#index'
end
