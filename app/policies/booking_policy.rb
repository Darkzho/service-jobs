class BookingPolicy < ApplicationPolicy
  def new?
    true
  end
  
  def create?
    record.service.user != user
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

  def order?
    true
  end

end
