require 'test_helper'

class PartInventoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @part_inventory = part_inventories(:one)
  end

  test "should get index" do
    get part_inventories_url
    assert_response :success
  end

  test "should get new" do
    get new_part_inventory_url
    assert_response :success
  end

  test "should create part_inventory" do
    assert_difference('PartInventory.count') do
      post part_inventories_url, params: { part_inventory: { inventory: @part_inventory.inventory, name: @part_inventory.name } }
    end

    assert_redirected_to part_inventory_url(PartInventory.last)
  end

  test "should show part_inventory" do
    get part_inventory_url(@part_inventory)
    assert_response :success
  end

  test "should get edit" do
    get edit_part_inventory_url(@part_inventory)
    assert_response :success
  end

  test "should update part_inventory" do
    patch part_inventory_url(@part_inventory), params: { part_inventory: { inventory: @part_inventory.inventory, name: @part_inventory.name } }
    assert_redirected_to part_inventory_url(@part_inventory)
  end

  test "should destroy part_inventory" do
    assert_difference('PartInventory.count', -1) do
      delete part_inventory_url(@part_inventory)
    end

    assert_redirected_to part_inventories_url
  end
end
