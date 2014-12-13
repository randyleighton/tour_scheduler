class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      # send mail to user to sign up for tour
      render @user, notice: "Successfully entered email: #{@user.email}"
    else
      render 'new', notice: "Failed to create, try again."

  end

  def show
  end

private
  def user_params
    params.require(:user).permit(:email, :last_name, :first_name, :phone, :ip_address)
  end

end