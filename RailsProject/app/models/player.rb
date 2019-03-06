# frozen_string_literal: true

class Player < ApplicationRecord
  belongs_to :battleground
  belongs_to :team

  validates :name, :specialty, presence: true
end
