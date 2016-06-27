require 'test_helper'

class SliderDentalsControllerTest < ActionController::TestCase
  setup do
    @slider_dental = slider_dentals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slider_dentals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slider_dental" do
    assert_difference('SliderDental.count') do
      post :create, slider_dental: { img: @slider_dental.img, link: @slider_dental.link, name: @slider_dental.name }
    end

    assert_redirected_to slider_dental_path(assigns(:slider_dental))
  end

  test "should show slider_dental" do
    get :show, id: @slider_dental
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slider_dental
    assert_response :success
  end

  test "should update slider_dental" do
    patch :update, id: @slider_dental, slider_dental: { img: @slider_dental.img, link: @slider_dental.link, name: @slider_dental.name }
    assert_redirected_to slider_dental_path(assigns(:slider_dental))
  end

  test "should destroy slider_dental" do
    assert_difference('SliderDental.count', -1) do
      delete :destroy, id: @slider_dental
    end

    assert_redirected_to slider_dentals_path
  end
end
