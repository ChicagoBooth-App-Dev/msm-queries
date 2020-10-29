class ActorsController < ApplicationController

  def index
    @list_actors = Actor.all
    render({ :template => 'actors_templates/index.html.erb'})
  end

  def detail
    @id = params.fetch('id')
    @actor = Actor.where({ :id => @id}).first
    @appearances = Character.where({ :actor_id => @id})
    render({ :template => 'actors_templates/detail.html.erb'})
  end

end