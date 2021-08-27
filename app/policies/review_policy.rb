class ReviewPolicy < ApplicationPolicy
  def new?
    true
  end
  
  def create?
    record.booking.service.user != user
  end

  def index?
    true
  end

  def update?
    true
  end
end
