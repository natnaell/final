class RostersController < ApplicationController

  def new
    @roster = Roster.new
    @user_id = Team.find(params[:team_id]).user_id
  end

  def create
    @roster = Roster.new
    @roster.team_id = params[:team_id]
    @roster.player_id = params[:p_id][:player_id]
    if @roster.save
      redirect_to teams_url, notice: "Player drafted!"
    else
      # redirect_to new_movie_url, notice: "Something went wrong!"
      render 'new'
    end
  end

end