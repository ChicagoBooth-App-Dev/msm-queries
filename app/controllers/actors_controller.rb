class ActorsController < ApplicationController

  def index
    @list_actors = Actor.all
    render({ :template => 'actors_templates/index.html.erb'})
  end

  def detail
    render({ :template => 'actors_templates/detail.html.erb'})
  end

end