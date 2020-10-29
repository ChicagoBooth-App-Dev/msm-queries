class DirectorsController < ApplicationController

  def index
    @list_directors = Director.all
    render({ :template => 'director_templates/index.html.erb'})
  end

  def eldest
    @type = "Eldest"
    @eldest =  Director.all.where.not({ :dob => nil}).order({:dob => :asc}).at(0)
    render({ :template => 'director_templates/eldest.html.erb'})
  end

  def youngest
    @type = "Youngest"
    @eldest =  Director.all.where.not({ :dob => nil}).order({:dob => :asc}).at(-1)
    render({ :template => 'director_templates/eldest.html.erb'})
  end

  def detail
    render({ :template => 'director_templates/detail.html.erb'})
  end
end