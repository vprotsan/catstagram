class HomeController < ApplicationController
  def index
    @movies = Movie.all
    @movies_older = Movie.where("release_year < ?", 1995)
  end
end
