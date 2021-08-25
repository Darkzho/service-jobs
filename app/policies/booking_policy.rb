class BookingPolicy < ApplicationPolicy
  def create?
    true
  end

  def show?
    true
  end

  def update?
    true
  end
  
  def status?
    true
  end
end
