class PagesController < ApplicationController
  def home
    @product_groups = ProductGroup.where(active: true).order(:order)
    @order_item = current_order.order_items.new
  end
end
