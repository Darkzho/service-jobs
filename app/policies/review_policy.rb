class ReviewPolicy < ApplicationPolicy
  def new?
    true
  end
  
  def create?
    true
  end

  def index?
    true
  end

  def update?
    true
  end
end
