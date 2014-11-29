class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :like, :unlike]
  before_action :set_ranking_movies
  layout 'united'

  def index
    @movies = Movie.recent
  end

  def show
  end

  def like
    Like.create(movie_id: @movie.id, user_id: current_user.id)
    @movie.update!(score: @movie.score+1)
  end

  def unlike
    Like.where(movie_id: @movie.id, user_id: current_user.id).first.destroy
    @movie.update!(score: @movie.score-1)
  end

  def chest
    @movies = Movie.chest
  end

  def abs
    @movies = Movie.abs
  end

  def back
    @movies = Movie.back
  end

  def arm
    @movies = Movie.arm
  end

  def leg
    @movies = Movie.leg
  end



  private
    def set_movie
      @movie = Movie.find(params[:id])
    end

    def set_ranking_movies
      @ranking_movies = Movie.recent.ranking
    end

    def movie_params
      params.require(:movie).permit(:title, :muscle, :explain, :score)
    end
end
