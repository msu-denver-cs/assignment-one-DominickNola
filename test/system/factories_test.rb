require "application_system_test_case"

class FactoriesTest < ApplicationSystemTestCase
  setup do
    @factory = factories(:one)
  end

  test "visiting the index" do
    visit factories_url
    assert_selector "h1", text: "Factories"
  end

  test "creating a Factory" do
    visit factories_url
    click_on "New Factory"

    fill_in "Country", with: @factory.country
    fill_in "Name", with: @factory.name
    click_on "Create Factory"

    assert_text "Factory was successfully created"
    click_on "Back"
  end

  test "updating a Factory" do
    visit factories_url
    click_on "Edit", match: :first

    fill_in "Country", with: @factory.country
    fill_in "Name", with: @factory.name
    click_on "Update Factory"

    assert_text "Factory was successfully updated"
    click_on "Back"
  end

  test "destroying a Factory" do
    visit factories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Factory was successfully destroyed"
  end
end
