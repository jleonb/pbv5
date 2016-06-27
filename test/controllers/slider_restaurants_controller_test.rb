require 'test_helper'

class SliderRestaurantsControllerTest < ActionController::TestCase
  setup do
    @slider_restaurant = slider_restaurants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slider_restaurants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slider_restaurant" do
    assert_difference('SliderRestaurant.count') do
      post :create, slider_restaurant: { img: @slider_restaurant.img, link.string: @slider_restaurant.link.string }
    end

    assert_redirected_to slider_restaurant_path(assigns(:slider_restaurant))
  end

  test "should show slider_restaurant" do
    get :show, id: @slider_restaurant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slider_restaurant
    assert_response :success
  end

  test "should update slider_restaurant" do
    patch :update, id: @slider_restaurant, slider_restaurant: { img: @slider_restaurant.img, link.string: @slider_restaurant.link.string }
    assert_redirected_to slider_restaurant_path(assigns(:slider_restaurant))
  end

  test "should destroy slider_restaurant" do
    assert_difference('SliderRestaurant.count', -1) do
      delete :destroy, id: @slider_restaurant
    end

    assert_redirected_to slider_restaurants_path
  end
end
