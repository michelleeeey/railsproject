# frozen_string_literal: true

class SearchController < ApplicationController
  def results
    @query = params[:query]
    @battleground_found = Battleground.where('name LIKE ?', "%#{@query}%")
    @team_found = Team.includes(:battleground).where('name LIKE ?', "%#{@query}%")
    @player_found = Player.includes(:battleground, :team).where('name LIKE ?', "%#{@query}%")
  end
end
