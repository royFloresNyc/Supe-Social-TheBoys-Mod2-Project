class EventPolicy < ApplicationPolicy

  def new?
    create?
  end

  def create?
      user.role == 'admin' || record.user == user
  end


  def update?
      user.role == 'admin' || record.user == user
  end

  def edit?
    update?
  end

  def destroy?
      user.role == 'admin' || record.user == user
  end
end
  