require 'test_helper'

class SliderRestaControllerTest < ActionController::TestCase
  setup do
    @slider_restum = slider_resta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slider_resta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slider_restum" do
    assert_difference('SliderRestum.count') do
      post :create, slider_restum: { img: @slider_restum.img, link: @slider_restum.link }
    end

    assert_redirected_to slider_restum_path(assigns(:slider_restum))
  end

  test "should show slider_restum" do
    get :show, id: @slider_restum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slider_restum
    assert_response :success
  end

  test "should update slider_restum" do
    patch :update, id: @slider_restum, slider_restum: { img: @slider_restum.img, link: @slider_restum.link }
    assert_redirected_to slider_restum_path(assigns(:slider_restum))
  end

  test "should destroy slider_restum" do
    assert_difference('SliderRestum.count', -1) do
      delete :destroy, id: @slider_restum
    end

    assert_redirected_to slider_resta_path
  end
end
