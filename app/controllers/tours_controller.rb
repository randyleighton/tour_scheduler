class ToursController < ApplicationController

  def index
    @tours = Tour.all
  end

  def new
    @tour = Tour.new
  end

  def create

  end


  def show

  end

private
  def tour_params
    params.require(:tour).permit(:description, :user_id)
  end

end