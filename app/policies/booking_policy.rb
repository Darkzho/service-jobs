class BookingPolicy < ApplicationPolicy
  def create?
    true
  end

  def show?
    record.user == user
  end

  def update?
    true
  end
  
  def status?
    record.user == user || record.service.user == user 
  end

  def chat?
    true
  end
end
