class Api::MoviesController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  # def all_movies
  #   @movies = Movie.all
  #   render "movie.json.jb"
  #   # render json: {message: "hey"}
  # end

  # def single_movie
  #   @single_movie = Movie.find_by(id:1)
  #   render 'single_movie.json.jb'
  # end

  # def take
  #   @take = Movie.take(2)
  #   render "take.json.jb"
  # end

  # def pure
  #   @pure = Movie.where("year = 2010")
  #   render "pure.json.jb"
  # end

  def index
    @movies = Movie.all.where(english: true)
    render "index.json.jb"
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render "show.json.erb"
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    )
    if @movie.save
      render "show.json.jb"
    else
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year] || @movie.year
    @movie.plot = params[:plot] || @movie.plot
    @movie.director = params[:director] || @movie.director
    @movie.english = params[:english] || @movie.english

    if @movie.save
      render "show.json.jb"
    else
      render json: {errors: @actor.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy

    render "destroy.json.jb"
  end

  
end 