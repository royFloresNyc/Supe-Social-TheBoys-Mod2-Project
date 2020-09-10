class ProductPolicy

  attr_reader :current_user, :product

  def initialize(current_user, product)
    @current_user = current_user
    @product = product
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
