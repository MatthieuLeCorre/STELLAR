class TripPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def create?
    return true
  end
  # def update?
  #   record.user_id == user.id
  #   # - record: the trip passed to the `authorize` method in controller
  #   # - user:   the `current_user` signed in with Devise.
  # end

  def destroy?
    record.user_id == user.id
  end
end
