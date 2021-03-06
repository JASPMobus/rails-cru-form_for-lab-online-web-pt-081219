class GenresController < ApplicationController
  def create
    @genre = Genre.create(genre_params)

    redirect_to genre_path(@genre)
  end

  def new
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id])
    @genre.update(genre_params)

    redirect_to genre_path(@genre)  
  end

  def index
  end

  def show
    @genre = Genre.find(params[:id])
  end

  private

  def genre_params 
    params.require(:genre).permit(:name, :bio)
  end
end
