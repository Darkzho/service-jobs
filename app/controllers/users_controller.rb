class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @markers = { lat: @user.geocode[0], lng: @user.geocode[1] }
    @services = @user.services
    authorize @user
  end 
end
