# frozen_string_literal: true

Rails.application.routes.draw do
  get 'players/index'
  get 'players/show'
  get 'teams/index'
  get 'teams/show'
  resources :battlegrounds, only: %i[index show]
end
