class PlaymastersController < ApplicationController
  def index
    @playmasters = Playmaster.all
  end

  def new
    @playmaster = Playmaster.new
  end

  def create
    @playmaster = Playmaster.create(playmaster_params)
    redirect_to @playmaster
  end

  def show
     @playmaster = Playmaster.find(params[:id])
  end

  def edit
    @playmaster = Playmaster.find(params[:id])
  end

  def update
    @playmaster = Playmaster.find(params[:id])

    if @playmaster.update(playmaster_params)
      redirect_to @playmaster
    else
      render :edit
    end
  end

  private
  def playmaster_params
    params.require(:playmaster).permit(:name, song_ids: [])
  end
end
