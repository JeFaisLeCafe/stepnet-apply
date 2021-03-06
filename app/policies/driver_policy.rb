class DriverPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def update?
    record.user == user
  end

  def create?
    true
  end

  def destroy?
    true
  end

end
