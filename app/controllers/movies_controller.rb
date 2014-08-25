class MoviesController < ApplicationController

  def index
    @movies = Movie.order(:name)
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(allowed_parameters)
    if @movie.save
      redirect_to "/"
    else
      render :new
    end
  end



  private

  def allowed_parameters
    params.require(:movie).permit(:name, :year, :synopsis)
  end

end

