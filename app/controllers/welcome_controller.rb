class WelcomeController < ApplicationController

  def index
    @welcome = Welcome.new
    @user = User.new
  end

  def create
    @welcome = Welcome.create(params[:welcome_params)
    
  end

end