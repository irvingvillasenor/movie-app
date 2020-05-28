class Api::MoviesController < ApplicationController

  def all_movies
    render json:{message= "yo"}
  end

end