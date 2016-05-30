class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find_by(id: params[:id])
    if @team == nil
      redirect_to "/teams"
    end
  end

  def new
    if session["user_id"].present?
      @team = Team.new
    else
      redirect_to login_path
    end
  end

  def create
    @team = Team.new
    @team.name = params[:team][:name]
    @team.rank = Team.count
    @team.user_id = session["user_id"]
    @team.league_id = params[:team][:league_id]
    if @team.save
      redirect_to teams_url, notice: "Team added! Thanks!"
    else
      # redirect_to new_movie_url, notice: "Something went wrong!"
      render 'new'
    end
  end

  def edit
    @team = Team.find_by(id: params[:id])
  end

  def update
    team = Team.find_by(id: params[:id])
    team.name = params[:team][:name]
    team.league_id = params[:team][:league_id]
    team.save
    redirect_to teams_url(@team)
  end

  def destroy
    team = Team.find_by(id: params[:id])
    if session["user_id"] == team.user_id
      if team
        team.delete
      end
    end
    redirect_to teams_url
  end

end