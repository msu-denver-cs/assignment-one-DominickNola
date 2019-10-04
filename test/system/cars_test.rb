require "application_system_test_case"

class CarsTest < ApplicationSystemTestCase
  setup do
    @car = cars(:one)
  end

  test "visiting the index" do
    visit cars_url
    assert_selector "h1", text: "Cars"
  end

  test "creating a Car" do
    visit cars_url
    click_on "New Car"

    fill_in "Car make", with: @car.make.name
    fill_in "Car model", with: @car.car_model
    fill_in "Make", with: @car.make_id
    fill_in "Vin number", with: @car.vin_number
    click_on "Create Car"

    assert_text "Car was successfully created"
    click_on "Back"
  end

  test "updating a Car" do
    visit cars_url
    click_on "Edit", match: :first

    #fill_in "Car make", with: @car.make.name
    fill_in "Car model", with: @car.car_model
    fill_in "Make", with: @car.make_id
    fill_in "Vin number", with: @car.vin_number
    click_on "Update Car"

    assert_text "Car was successfully updated"
    click_on "Back"
  end

  test "destroying a Car" do
    visit cars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Car was successfully destroyed"
  end
end
