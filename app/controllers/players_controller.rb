class PlayersController < ApplicationController

  def index
    @players = Player.all
    @gamestats = Gamestat.all
  end

  def new
    @player = Player.new
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if  @player.update(player_params)
      redirect_to players_path
    else
      render 'edit'
    end
  end

  def create
    @player = Player.new(player_params)
    if @player.save
      redirect_to  players_path
    else
      render 'new'
    end
  end

private

  def player_params
    params[:player].permit(:name)
  end

end
