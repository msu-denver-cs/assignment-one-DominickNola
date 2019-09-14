require "application_system_test_case"

class PartInventoriesTest < ApplicationSystemTestCase
  setup do
    @part_inventory = part_inventories(:one)
  end

  test "visiting the index" do
    visit part_inventories_url
    assert_selector "h1", text: "Part Inventories"
  end

  test "creating a Part inventory" do
    visit part_inventories_url
    click_on "New Part Inventory"

    fill_in "Inventory", with: @part_inventory.inventory
    fill_in "Name", with: @part_inventory.name
    click_on "Create Part inventory"

    assert_text "Part inventory was successfully created"
    click_on "Back"
  end

  test "updating a Part inventory" do
    visit part_inventories_url
    click_on "Edit", match: :first

    fill_in "Inventory", with: @part_inventory.inventory
    fill_in "Name", with: @part_inventory.name
    click_on "Update Part inventory"

    assert_text "Part inventory was successfully updated"
    click_on "Back"
  end

  test "destroying a Part inventory" do
    visit part_inventories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Part inventory was successfully destroyed"
  end
end
