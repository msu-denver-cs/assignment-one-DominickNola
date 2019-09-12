require "application_system_test_case"

class MrCarPartsTest < ApplicationSystemTestCase
  setup do
    @mr_car_part = mr_car_parts(:one)
  end

  test "visiting the index" do
    visit mr_car_parts_url
    assert_selector "h1", text: "Mr Car Parts"
  end

  test "creating a Mr car part" do
    visit mr_car_parts_url
    click_on "New Mr Car Part"

    fill_in "Make", with: @mr_car_part.Make
    fill_in "Model", with: @mr_car_part.Model
    fill_in "Price", with: @mr_car_part.price
    click_on "Create Mr car part"

    assert_text "Mr car part was successfully created"
    click_on "Back"
  end

  test "updating a Mr car part" do
    visit mr_car_parts_url
    click_on "Edit", match: :first

    fill_in "Make", with: @mr_car_part.Make
    fill_in "Model", with: @mr_car_part.Model
    fill_in "Price", with: @mr_car_part.price
    click_on "Update Mr car part"

    assert_text "Mr car part was successfully updated"
    click_on "Back"
  end

  test "destroying a Mr car part" do
    visit mr_car_parts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mr car part was successfully destroyed"
  end
end
