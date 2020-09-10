class PostPolicy
  
  attr_reader :current_user, :post

  def initialize(current_user, post)
    @current_user = current_user
    @post = post
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