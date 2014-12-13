class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    binding.pry

  end

  def show
  end

private
  def user_params
    params.require(:user).permit(:email, :last_name, :first_name, :phone, :ip_address)
  end

end