class ToursController < ApplicationController

  def index
    @tours = Tour.all
  end

  def new
    @tour = Tour.new
    @user = User.find(params[:format])
  end

  def create

  end


  def show

  end

private
  def tour_params
    params.require(:tour).permit(:tour_date, :user_id)
  end

end