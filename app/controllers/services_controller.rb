class ServicesController < ApplicationController
  def index
  end

  def new
    @service = Service.new
  end

  def create 
    @service = Service.new(service_param)
    @service.user = current_user
    @service.save
  end
  
  def edit 
  
  end

  def update
  end

  def show 
  end

  def destroy
    @service = Service.find(params[:id])
    @service.destroy
  end

  private 

  def service_param
    params.require(:service).permit(:title, :description, :category, :price, :user_id)
  end
end
