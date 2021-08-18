class UsersController < ApplicationController
  def index
      @users = User.all
      authorize @users
  end

  def show
    @user = User.find(params[:id])
    @services = @user.services
    authorize @user
  end 
end
