require 'test_helper'

class InvoicePartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice_part = invoice_parts(:one)
  end

  test "should get index" do
    get invoice_parts_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_part_url
    assert_response :success
  end

  test "should create invoice_part" do
    assert_difference('InvoicePart.count') do
      post invoice_parts_url, params: { invoice_part: { make: @invoice_part.make, model: @invoice_part.model, part_inventories_id: @invoice_part.part_inventories_id, vin: @invoice_part.vin } }
    end

    assert_redirected_to invoice_part_url(InvoicePart.last)
  end

  test "should show invoice_part" do
    get invoice_part_url(@invoice_part)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_part_url(@invoice_part)
    assert_response :success
  end

  test "should update invoice_part" do
    patch invoice_part_url(@invoice_part), params: { invoice_part: { make: @invoice_part.make, model: @invoice_part.model, part_inventories_id: @invoice_part.part_inventories_id, vin: @invoice_part.vin } }
    assert_redirected_to invoice_part_url(@invoice_part)
  end

  test "should destroy invoice_part" do
    assert_difference('InvoicePart.count', -1) do
      delete invoice_part_url(@invoice_part)
    end

    assert_redirected_to invoice_parts_url
  end
end
