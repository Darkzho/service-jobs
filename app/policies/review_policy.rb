class ReviewPolicy < ApplicationPolicy
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
