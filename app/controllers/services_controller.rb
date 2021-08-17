class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :update, :edit, :destroy]

  def index
    #@services = policy_scope(Service).order(created_at: :desc)
    @services = Service.all
    authorize @services
  end

  def new
    @service = Service.new
    authorize @service
  end

  def create 
    @service = Service.new(service_param)
    @service.user = current_user
    authorize @service
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

  def set_service 
    @service = Service.find(params[:id])
    authorize @service
  end
end
