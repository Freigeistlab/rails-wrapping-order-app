json.extract! product_group, :id, :name, :order, :active, :created_at, :updated_at
json.url product_group_url(product_group, format: :json)
