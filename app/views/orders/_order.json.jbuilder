json.extract! order, :id, :subtotal, :tax, :shipping, :total, :order_status_id, :created_at, :updated_at
json.orderProducts order.order_items.map { |oi| oi.product.name  }
json.url order_url(order, format: :json)
