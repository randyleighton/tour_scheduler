class WelcomeController < ApplicationController

  def index

  end

  def new
    @welcome = Welcome.new
  end

  def create
    @welcome = Welcome.create(params[:welcome_params)
    
  end

end