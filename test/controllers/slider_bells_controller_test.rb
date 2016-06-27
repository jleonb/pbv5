require 'test_helper'

class SliderBellsControllerTest < ActionController::TestCase
  setup do
    @slider_bell = slider_bells(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slider_bells)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slider_bell" do
    assert_difference('SliderBell.count') do
      post :create, slider_bell: { img: @slider_bell.img, link: @slider_bell.link }
    end

    assert_redirected_to slider_bell_path(assigns(:slider_bell))
  end

  test "should show slider_bell" do
    get :show, id: @slider_bell
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slider_bell
    assert_response :success
  end

  test "should update slider_bell" do
    patch :update, id: @slider_bell, slider_bell: { img: @slider_bell.img, link: @slider_bell.link }
    assert_redirected_to slider_bell_path(assigns(:slider_bell))
  end

  test "should destroy slider_bell" do
    assert_difference('SliderBell.count', -1) do
      delete :destroy, id: @slider_bell
    end

    assert_redirected_to slider_bells_path
  end
end
