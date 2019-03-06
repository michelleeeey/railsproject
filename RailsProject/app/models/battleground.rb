# frozen_string_literal: true

class Battleground < ApplicationRecord
  has_many :teams
  has_many :players

  validates :name, :location, presence: true
end
