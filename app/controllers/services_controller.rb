class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :update, :edit, :destroy]
  
  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create 
    @service = Service.new(service_param)
    @service.user = current_user
    if @service.save
      redirect_to services_path(@services)
    else
      render :new
    end
  end
  
  def edit 
  end

  def update
    @service.update(service_param)
    if @service.save
      redirect_to services_path(@services)
    else
      render :edit
    end
  end

  def show 
  end

  def destroy
    @service.destroy
    redirect_to services_path(@services)
  end

  private 

  def service_param
    params.require(:service).permit(:title, :description, :category, :price, :user_id)
  end
end
