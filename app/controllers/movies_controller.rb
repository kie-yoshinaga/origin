class MoviesController < ApplicationController


  def index 
    @movies = Movie.includes(:user).order("created_at DESC")
  end

  def new
    @movies = Movie.new
  end

  def create
    @movies = Movie.new(movie_params)
  end

  private

  def movie_params
    params.require(:review).permit(:id, :content, :rate, :title, :product_id, :user_id, review_image_attributes: [:image])
  end

end