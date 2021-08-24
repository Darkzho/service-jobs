class BookingPolicy < ApplicationPolicy
  def create?
    true
  end

  def show?
    true
  end
  
  def status?
    true
  end

  def chat?
    true
  end
end
