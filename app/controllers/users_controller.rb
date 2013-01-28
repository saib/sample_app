class UsersController < ApplicationController
  
  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	flash[:success] = "Welcome to the Sample App!"
  	@user = User.new(params[:user])
  	if @user.save
  		redirect_to @user
  	else
  		render 'new'
  	end
  end
end
