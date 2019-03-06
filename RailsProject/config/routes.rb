# frozen_string_literal: true

Rails.application.routes.draw do
  resources :battlegrounds, only: %i[index show]
end
