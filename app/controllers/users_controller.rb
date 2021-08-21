class UsersController < ApplicationController
  def index
    @user = current_user
  end
  
  def menu
    
  end

  def show
    @users = User.geocoded

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user })
      }
    end
    @user = User.find(params[:id])
    @services = @user.services
    authorize @user
  end 
end
