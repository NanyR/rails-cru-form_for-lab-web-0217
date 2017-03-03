class GenresController < ApplicationController
  def new
    @genre=Genre.new
  end

  def create
    @genre=Genre.create(genre_params(:name))
    redirect_to @genre
  end

  def edit
    @genre=set_genre
  end

  def update
    @genre=set_genre
    @genre.update(genre_params(:name))
    @genre.save
    redirect_to @genre
  end

  def destroy
  end

  def index
  end

  def show
    @genre= set_genre
  end

  private

  def set_genre
    Genre.find(params[:id])
  end

  def genre_params(*args)
    params.require(:genre).permit(*args)
  end

end
