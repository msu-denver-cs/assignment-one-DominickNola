require "application_system_test_case"

class InvoicePartsTest < ApplicationSystemTestCase
  setup do
    @invoice_part = invoice_parts(:one)
  end

  test "visiting the index" do
    visit invoice_parts_url
    assert_selector "h1", text: "Invoice Parts"
  end

  test "creating a Invoice part" do
    visit invoice_parts_url
    click_on "New Invoice Part"

    fill_in "Make", with: @invoice_part.make
    fill_in "Model", with: @invoice_part.model
    fill_in "Part inventories", with: @invoice_part.part_inventories_id
    fill_in "Vin", with: @invoice_part.vin
    click_on "Create Invoice part"

    assert_text "Invoice part was successfully created"
    click_on "Back"
  end

  test "updating a Invoice part" do
    visit invoice_parts_url
    click_on "Edit", match: :first

    fill_in "Make", with: @invoice_part.make
    fill_in "Model", with: @invoice_part.model
    fill_in "Part inventories", with: @invoice_part.part_inventories_id
    fill_in "Vin", with: @invoice_part.vin
    click_on "Update Invoice part"

    assert_text "Invoice part was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoice part" do
    visit invoice_parts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoice part was successfully destroyed"
  end
end
