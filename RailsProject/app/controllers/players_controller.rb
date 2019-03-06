# frozen_string_literal: true

class PlayersController < ApplicationController
  def index
    @players = Player.includes(:battleground).page(params[:page]).per(10)
  end

  def show
    @player = Player.includes(:battleground, :team).find(params[:id])
  end
end
