# frozen_string_literal: true

class BattlegroundsController < ApplicationController
  def index
    @battlegrounds = Battleground.all
  end

  def show
    @battleground = Battleground.includes(:teams).find(params[:id])
  end
end
