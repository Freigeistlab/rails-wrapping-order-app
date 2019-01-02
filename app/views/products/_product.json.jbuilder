json.extract! product, :id, :name, :description, :image, :price, :active, :product_group_id, :created_at, :updated_at
json.url product_url(product, format: :json)
