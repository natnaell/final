class PlayersController < ApplicationController

  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
    if @player == nil
      redirect_to "/players"
    end
  end

end