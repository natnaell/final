class LeaguesController < ApplicationController

  def index
    @leagues = League.all
  end

  def show
    @league = League.find_by(id: params[:id])
    if @league == nil
      redirect_to "/leagues"
    end
  end

end