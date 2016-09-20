require 'test_helper'

class FuelStataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fuel_statum = fuel_stata(:one)
  end

  test "should get index" do
    get fuel_stata_url
    assert_response :success
  end

  test "should get new" do
    get new_fuel_statum_url
    assert_response :success
  end

  test "should create fuel_statum" do
    assert_difference('FuelStatum.count') do
      post fuel_stata_url, params: { fuel_statum: {  } }
    end

    assert_redirected_to fuel_statum_url(FuelStatum.last)
  end

  test "should show fuel_statum" do
    get fuel_statum_url(@fuel_statum)
    assert_response :success
  end

  test "should get edit" do
    get edit_fuel_statum_url(@fuel_statum)
    assert_response :success
  end

  test "should update fuel_statum" do
    patch fuel_statum_url(@fuel_statum), params: { fuel_statum: {  } }
    assert_redirected_to fuel_statum_url(@fuel_statum)
  end

  test "should destroy fuel_statum" do
    assert_difference('FuelStatum.count', -1) do
      delete fuel_statum_url(@fuel_statum)
    end

    assert_redirected_to fuel_stata_url
  end
end
