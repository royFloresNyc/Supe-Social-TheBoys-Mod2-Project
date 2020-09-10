class EventPolicy
  
  attr_reader :current_user, :event

  def initialize(current_user, event)
    @current_user = current_user
    @event = event
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
  