class Admin::CategoriesController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_USER'], password: ENV['ADMIN_KEY']

  # show all current categories
  def index
    @categories = Category.all
    render :index
  end

  # render new form
  def new
    @new_categories = Category.new
  end

  # database insert
  def create
    @new_categories = Category.new(category_params)
    
    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:product).permit(
      :name
    )
  end

end
