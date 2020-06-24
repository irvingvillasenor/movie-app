class Api::MovieGenresController < ApplicationController

  skip_before_action :verify_authenticity_token

  def create
    @movie_genre = MovieGenre.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id]
    )
    if @movie_genre.save
      render "show.json.jb"
    end
  end
  
end
