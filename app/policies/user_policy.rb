class UserPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end


  def update?
    record == user
  end

  def show?
    record.id == user.id
  end

  def delete?
    record == user
  end

  def edit?
    record == user
  end

  def new?
    true

  end
end
