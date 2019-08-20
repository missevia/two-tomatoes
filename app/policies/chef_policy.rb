class ChefPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # Anyone can view any chef
      scope.all

      # Display only chefs of owner
      # scope.where(user: user)
    end
  end

  def create?
    return true # Anyone can create a chef!
  end

  def show?
    return true
  end

  def index?
    return true
  end

  def update?
    # Inside a policy?
    # 1. 'user' is the current_user
    # 2. 'record' is the argument passed to 'authorize' in Controller.
    user_is_owner_or_admin?
  end

  def destroy?
    # 1st: only an admin

    # 2nd: the owner can destroy
    user_is_owner_or_admin?
  end

  private

  def user_is_owner_or_admin?
    record.user == user || user.admin
  end
end
