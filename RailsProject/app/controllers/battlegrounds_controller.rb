# frozen_string_literal: true

class BattlegroundsController < ApplicationController
  def index
    @battlegrounds = Battleground.all
  end

  def show; end
end
