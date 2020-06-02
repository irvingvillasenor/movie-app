class Api::ActorsController < ApplicationController

  def single_actor
    @actor = Actor.find_by(id:2)
    render "actors.json.jb"
  end

  def individual
    @actor = Actor.find_by(first_name: params["first_name"])
    render "individual.json.jb"
  end


end
