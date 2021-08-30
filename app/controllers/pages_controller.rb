class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    if params[:query].present?
      b = params[:query]
      url = "http://localhost:3000/services?query=#{b}"
      redirect_to url
    else
      @services = Service.all
    end
    @top_services = Service.limit(8)
  end
end
