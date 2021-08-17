class ServicePolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  end 

  def destroy?
    record.user == user
  end

  private

  def service
    record
  end
end
