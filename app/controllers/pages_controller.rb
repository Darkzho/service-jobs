class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
    @services = Service.all
    @top_services = Service.limit(8)
  end
end
