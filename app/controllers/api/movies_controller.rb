class Api::MoviesController < ApplicationController

  def all_movies
    # @movie = Movies.first
    render "movie.json.jb"
  end

end