# frozen_string_literal: true

class TeamsController < ApplicationController
  def index
    @teams = Team.includes(:battleground).page(params[:page]).per(10)
  end

  def show
    @team = Team.includes(:battleground).find(params[:id])
  end
end
