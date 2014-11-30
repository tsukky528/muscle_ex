class UsersController < ApplicationController
  before_action :set_user, only: [:show_likes]
  layout 'united'

  def show_likes
    @ranking_movies = Movie.ranking
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
end
