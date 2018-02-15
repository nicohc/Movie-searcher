class MoviesController < ApplicationController
  def home
  end

  def create
      @moviename = params[:movie]
      redirect_to search_result_path(@moviename)
  end

  def search
      @moviename = params[:movie]
      @movies= SearchMovie.new(@moviename).perform

  end

end
