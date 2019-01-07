class OrderItemsController < ApplicationController
  def create
    @order = current_order
    existing_order_items = @order.order_items
    @order_item = @order.order_items.new(order_item_params)
    same_group_items = existing_order_items.where(product_group_id: @order_item.product.product_group_id)
    if same_group_items.count > 0
      same_group_items.destroy_all
    end
    @order.order_status_id = 1
    @order.save
    session[:order_id] = @order.id    
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
  end
private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id, :product_group_id)
  end
end
