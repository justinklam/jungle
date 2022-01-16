class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with name: ENV['ADMIN_USER'], password: ENV['ADMIN_KEY']

  def show
    @product_count = LineItem.count
    @category_count = Category.count

    # If I want to pull other info
    # @category_names = Category.all
  end
end
