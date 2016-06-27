require 'test_helper'

class CRestaurantsControllerTest < ActionController::TestCase
  setup do
    @c_restaurant = c_restaurants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_restaurants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_restaurant" do
    assert_difference('CRestaurant.count') do
      post :create, c_restaurant: { img: @c_restaurant.img, link.string: @c_restaurant.link.string }
    end

    assert_redirected_to c_restaurant_path(assigns(:c_restaurant))
  end

  test "should show c_restaurant" do
    get :show, id: @c_restaurant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_restaurant
    assert_response :success
  end

  test "should update c_restaurant" do
    patch :update, id: @c_restaurant, c_restaurant: { img: @c_restaurant.img, link.string: @c_restaurant.link.string }
    assert_redirected_to c_restaurant_path(assigns(:c_restaurant))
  end

  test "should destroy c_restaurant" do
    assert_difference('CRestaurant.count', -1) do
      delete :destroy, id: @c_restaurant
    end

    assert_redirected_to c_restaurants_path
  end
end
