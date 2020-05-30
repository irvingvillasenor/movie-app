class Api::MoviesController < ApplicationController

  def all_movies
    @movies = Movie.all
    render "movie.json.jb"
    # render json: {message: "hey"}
  end

  def single_movie
    @single_movie = Movie.find_by(id:1)
    render 'single_movie.json.jb'
  end

  def take
    @take = Movie.take(2)
    render "take.json.jb"
  end

  def pure
    @pure = Movie.where("year = 2010")
    render "pure.json.jb"
  end

  
end 