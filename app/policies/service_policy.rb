class ServicePolicy < ApplicationPolicy
  def index?
    true
  end

  def create?
    user.owner?
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
