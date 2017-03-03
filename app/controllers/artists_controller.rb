class ArtistsController < ApplicationController

  def new
    @artist=Artist.new
  end

  def create
    @artist=Artist.create(artists_params(:name, :bio))
    redirect_to artist_path(@artist.id)
  end

  def edit
    @artist=set_artist
  end

  def update
    @artist=set_artist
    @artist.update(artists_params(:name, :bio))
    @artist.save
    redirect_to @artist 
  end

  def destroy
  end

  def index
  end

  def show
    @artist=set_artist
  end

  private

  def set_artist
    Artist.find(params[:id])
  end

  def artists_params(*args)
    params.require(:artist).permit(*args)
  end

end
