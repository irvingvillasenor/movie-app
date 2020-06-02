Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actors_url" => "actors#single_actor"

    get "/movies" => "movies#all_movies"
    get "/single_movie" => "movies#single_movie"

    get "/query" => "movies#take"

    get "/pure" => "movies#pure"

    get "/pluck" => "movies#pluck"

    get "/actors" => "actors#individual"
    get "/actors/:first_name" => "actors#individual"
    post "/actors" => "actors#individual"
  end
end
