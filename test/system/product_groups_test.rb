require "application_system_test_case"

class ProductGroupsTest < ApplicationSystemTestCase
  setup do
    @product_group = product_groups(:one)
  end

  test "visiting the index" do
    visit product_groups_url
    assert_selector "h1", text: "Product Groups"
  end

  test "creating a Product group" do
    visit product_groups_url
    click_on "New Product Group"

    fill_in "Active", with: @product_group.active
    fill_in "Name", with: @product_group.name
    fill_in "Order", with: @product_group.order
    click_on "Create Product group"

    assert_text "Product group was successfully created"
    click_on "Back"
  end

  test "updating a Product group" do
    visit product_groups_url
    click_on "Edit", match: :first

    fill_in "Active", with: @product_group.active
    fill_in "Name", with: @product_group.name
    fill_in "Order", with: @product_group.order
    click_on "Update Product group"

    assert_text "Product group was successfully updated"
    click_on "Back"
  end

  test "destroying a Product group" do
    visit product_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Product group was successfully destroyed"
  end
end
