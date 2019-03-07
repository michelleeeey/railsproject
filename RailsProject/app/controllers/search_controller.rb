# frozen_string_literal: true

class SearchController < ApplicationController
  def results
    @query = params[:q]
    @battleground = Battleground.where('name LIKE ?', "%#{@query}%")
    @team = Team.includes(:battleground).where('name LIKE ?', "%#{@query}%")
    @player = Player.includes(:battleground, :team).where('name LIKE ?', "%#{@query}%")

    @search_option = params[:search_option]

    if @query == ''
      @search_query = []
    else
      case @search_option
      when 'Search All'
        @search_query = @battleground + @team + @player
      when 'Battleground'
        @search_query = @battleground
      when 'Team'
        @search_query = @team
      when 'Player'
        @search_query = @player
      end
    end
  end
  end
