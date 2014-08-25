class WelcomeController < MoviesController


  def index
    @movies = Movie.order(year: :desc)
  end

  def show
    @movie = Movie.find(params[:id])
  end

end