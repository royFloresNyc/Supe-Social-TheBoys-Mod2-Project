class EventPolicy
  
  attr_reader :current_user, :supe

  def initialize(current_user, supe)
    @current_user = current_user
    @supe = supe
  end

  def new?
    @current_user.role == 'admin'
  end

  def create?
    @current_user.role == 'admin'
  end

  def update?
    @current_user.role == 'admin'
  end

  def edit?
    @current_user.role == 'admin'
  end

  def destroy?
    @current_user.role == 'admin'
  end
end
  