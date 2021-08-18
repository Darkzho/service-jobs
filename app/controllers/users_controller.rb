class UsersController < ApplicationController
  def index
  #  if params[:query].present?
  #    @query = params[:query]
  #    @service = Service.where("category LIKE ?", "%#{params[:query]}%")
  #  else  
      @users = User.all
      authorize @users
  #  end
  end

  def show
    @user = User.find(params[:id])
    @services = @user.services
    authorize @user
  end 
end
