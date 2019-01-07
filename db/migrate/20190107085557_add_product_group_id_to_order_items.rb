class AddProductGroupIdToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_column :order_items, :product_group_id, :integer
  end
end
