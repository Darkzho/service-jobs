class UsersController < ApplicationController
  def show
    
    @user = User.find(params[:id])
    @users = User.geocoded

    @markers = @users.geocoded.map do |user|
      if user == @user
        {
          lat: user.latitude,
          lng: user.longitude,
          info_window: render_to_string(partial: "info_window", locals: { user: user })
        }
      end
    end
    @services = @user.services
    authorize @user
  end 
end
