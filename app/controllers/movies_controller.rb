class MoviesController  < ApplicationController

  def index
    @list_movies = Movies.all
    render ({ :template => 'movies_templates/index.html.erb'})
  end

end