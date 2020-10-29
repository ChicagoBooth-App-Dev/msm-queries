class MoviesController  < ApplicationController

  def index
    @list_movies = Movie.all
    render ({ :template => 'movies_templates/index.html.erb'})
  end

  def detail
    @id = params.fetch('id')
    @movie_object = Movie.where({ :id => @id}).first
    render ({ :template => 'movies_templates/detail.html.erb'})
  end
end