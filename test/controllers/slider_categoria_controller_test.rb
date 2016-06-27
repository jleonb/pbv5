require 'test_helper'

class SliderCategoriaControllerTest < ActionController::TestCase
  setup do
    @slider_categorium = slider_categoria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slider_categoria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slider_categorium" do
    assert_difference('SliderCategorium.count') do
      post :create, slider_categorium: { img: @slider_categorium.img, link: @slider_categorium.link }
    end

    assert_redirected_to slider_categorium_path(assigns(:slider_categorium))
  end

  test "should show slider_categorium" do
    get :show, id: @slider_categorium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slider_categorium
    assert_response :success
  end

  test "should update slider_categorium" do
    patch :update, id: @slider_categorium, slider_categorium: { img: @slider_categorium.img, link: @slider_categorium.link }
    assert_redirected_to slider_categorium_path(assigns(:slider_categorium))
  end

  test "should destroy slider_categorium" do
    assert_difference('SliderCategorium.count', -1) do
      delete :destroy, id: @slider_categorium
    end

    assert_redirected_to slider_categoria_path
  end
end
