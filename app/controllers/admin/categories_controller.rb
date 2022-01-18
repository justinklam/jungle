class Admin::CategoriesController < ApplicationController

  # show all current categories
  def index
    @categories = Category.all
    render :index
  end

  # render new form
  def new
    render :new
  end

  # database insert
  def create
    @new_categories = Category.new
  end

end
