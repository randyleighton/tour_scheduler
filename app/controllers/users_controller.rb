class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      redirect_to user_path(@user), notice: "Look for your sign up email at: #{@user.email}"
    else
      render 'new', notice: "Failed to create, try again."
    end
  end


  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    @user.ip_address = request.env["HTTP_X_FORWARDED_FOR"] #so far this is not working 
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to new_tour_path, notice: "Your information is entered, now lets update your tour preferences"
    else
      render 'edit', notice: "Failed to enter information into system, Try again."
    end

  end

private
  def user_params
    params.require(:user).permit(:email, :last_name, :first_name, :phone, :ip_address)
  end

end