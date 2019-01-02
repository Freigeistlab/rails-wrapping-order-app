require 'test_helper'

class ProductGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @product_group = product_groups(:one)
  end

  test "should get index" do
    get product_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_product_group_url
    assert_response :success
  end

  test "should create product_group" do
    assert_difference('ProductGroup.count') do
      post product_groups_url, params: { product_group: { active: @product_group.active, name: @product_group.name, order: @product_group.order } }
    end

    assert_redirected_to product_group_url(ProductGroup.last)
  end

  test "should show product_group" do
    get product_group_url(@product_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_product_group_url(@product_group)
    assert_response :success
  end

  test "should update product_group" do
    patch product_group_url(@product_group), params: { product_group: { active: @product_group.active, name: @product_group.name, order: @product_group.order } }
    assert_redirected_to product_group_url(@product_group)
  end

  test "should destroy product_group" do
    assert_difference('ProductGroup.count', -1) do
      delete product_group_url(@product_group)
    end

    assert_redirected_to product_groups_url
  end
end
