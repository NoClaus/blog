class PostPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  
  def create?
    user_admin?
  end

  def edit?
    user_admin?
  end
  
  def update?
    user_admin?
  end

  def destroy?
    user_admin?
  end
end
