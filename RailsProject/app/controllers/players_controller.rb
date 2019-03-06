# frozen_string_literal: true

class PlayersController < ApplicationController
  def index
    @players = Player.includes(:battleground)
  end

  def show
    @player = Player.includes(:battleground, :team).find(params[:id])
  end
end
