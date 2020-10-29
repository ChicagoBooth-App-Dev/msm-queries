class DirectorsController < ApplicationController

  def index
    @list_directors = Director.all
    render({ :template => 'director_templates/index.html.erb'})
  end

  def eldest
    @eldest =  Director.all.where.not({ :dob => nil}).order({:dob => :asc}).at(0)
    render({ :template => 'director_templates/eldest.html.erb'})
  end

  def detail
    render({ :template => 'director_templates/detail.html.erb'})
  end
end