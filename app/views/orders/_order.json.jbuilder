json.extract! order, :id, :subtotal, :tax, :shipping, :total, :order_status_id, :created_at, :updated_at
json.orderProducts order.order_items do |oi|
  json.productGroup oi.product.product_group.id
  json.product oi.product.id
end
json.url order_url(order, format: :json)
