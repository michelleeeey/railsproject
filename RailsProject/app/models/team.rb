# frozen_string_literal: true

class Team < ApplicationRecord
  belongs_to :battleground
  has_many :players

  validates :name, :quote, presence: true
end
