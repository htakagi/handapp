class PlayersController < ApplicationController

  def index
    @players = Player.all
    @gamestats = Gamestat.all
  end

end
