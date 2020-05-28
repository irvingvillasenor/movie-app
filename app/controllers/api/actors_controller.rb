class Api::ActorsController < ApplicationController

def single_actor
  @actor = Actor.find_by(id:2)
  render "actors.json.jb"
end

end
