class PlaymastersController < ApplicationController
  def index
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

  private
  def playmaster_params
    params.require(:playmaster).permit(:name, song_ids: [])
  end
end
