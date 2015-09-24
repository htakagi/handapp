class PracticesController < ApplicationController

  def index
    @practices = Practice.all
  end

  def new
    @practice = Practice.new
  end

  def edit
    @practice = Practice.find(params[:id])
  end

  def update
    @practice = Practice.find(params[:id])
    if  @practice.update(practice_params)
      redirect_to practices_path
    else
      render 'edit'
    end
  end

  def create
    @practice = Practice.new(practice_params)
    if @practice.save
      redirect_to  practices_path
    else
      render 'new'
    end
  end

private

  def practice_params
    params[:practice].permit(:name)
  end
end
