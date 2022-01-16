class Admin::DashboardController < ApplicationController
  def show
    @product_count = LineItem.count
    @category_count = Category.count

    # If I want to pull other info
    # @category_names = Category.all
  end
end
