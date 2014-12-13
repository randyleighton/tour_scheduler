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

  def edit
    @user = User.find(params[:id])
    @user.ip_address = Request.ip
    binding.pry
  end

  def show
    @user = User.find(params[:id])
  end

private
  def user_params
    params.require(:user).permit(:email, :last_name, :first_name, :phone, :ip_address)
  end

end