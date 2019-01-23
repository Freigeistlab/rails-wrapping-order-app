json.extract! order, :id, :subtotal, :tax, :shipping, :total, :order_status_id, :created_at, :updated_at
json.orderedProducts order.order_items.map { |oi| oi.product.id }
json.url order_url(order, format: :json)
