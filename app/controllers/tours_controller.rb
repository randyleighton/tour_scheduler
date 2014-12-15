class ToursController < ApplicationController

  def index
    @tours = Tour.all
  end

  def new
    @tour = Tour.new
    @user = User.find(params[:format])
  end

  def create
    @tour = Tour.create(tour_params)
    if @tour.valid?
      redirect_to tour_path(@tour), notice: "Your tour has been scheduled successfully"
    else
      render 'new', "Please try again, failed to schedule the tour."
    end

  end


  def show

  end

private
  def tour_params
    params.require(:tour).permit(:tour_date, :user_id)
  end

end