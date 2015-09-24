class TournamentsController < ApplicationController

  def index
    @tournaments = Tournament.all
  end

  def new
    @tournament = Tournament.new
  end

  def edit
    @tournament = Tournament.find(params[:id])
  end

  def update
    @tournament = Tournament.find(params[:id])
    if  @tournament.update(tournament_params)
      redirect_to tournaments_path
    else
      render 'edit'
    end
  end

  def create
    @tournament = Tournament.new(tournament_params)
    if @tournament.save
      redirect_to  tournaments_path
    else
      render 'new'
    end
  end

private

  def tournament_params
    params[:tournament].permit(:name)
  end

end
