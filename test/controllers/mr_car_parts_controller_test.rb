require 'test_helper'

class MrCarPartsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mr_car_part = mr_car_parts(:one)
  end

  test "should get index" do
    get mr_car_parts_url
    assert_response :success
  end

  test "should get new" do
    get new_mr_car_part_url
    assert_response :success
  end

  test "should create mr_car_part" do
    assert_difference('MrCarPart.count') do
      post mr_car_parts_url, params: { mr_car_part: { Make: @mr_car_part.Make, Model: @mr_car_part.Model, price: @mr_car_part.price } }
    end

    assert_redirected_to mr_car_part_url(MrCarPart.last)
  end

  test "should show mr_car_part" do
    get mr_car_part_url(@mr_car_part)
    assert_response :success
  end

  test "should get edit" do
    get edit_mr_car_part_url(@mr_car_part)
    assert_response :success
  end

  test "should update mr_car_part" do
    patch mr_car_part_url(@mr_car_part), params: { mr_car_part: { Make: @mr_car_part.Make, Model: @mr_car_part.Model, price: @mr_car_part.price } }
    assert_redirected_to mr_car_part_url(@mr_car_part)
  end

  test "should destroy mr_car_part" do
    assert_difference('MrCarPart.count', -1) do
      delete mr_car_part_url(@mr_car_part)
    end

    assert_redirected_to mr_car_parts_url
  end
end
