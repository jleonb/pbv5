require 'test_helper'

class SliderTopsControllerTest < ActionController::TestCase
  setup do
    @slider_top = slider_tops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slider_tops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slider_top" do
    assert_difference('SliderTop.count') do
      post :create, slider_top: { img: @slider_top.img, link: @slider_top.link }
    end

    assert_redirected_to slider_top_path(assigns(:slider_top))
  end

  test "should show slider_top" do
    get :show, id: @slider_top
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slider_top
    assert_response :success
  end

  test "should update slider_top" do
    patch :update, id: @slider_top, slider_top: { img: @slider_top.img, link: @slider_top.link }
    assert_redirected_to slider_top_path(assigns(:slider_top))
  end

  test "should destroy slider_top" do
    assert_difference('SliderTop.count', -1) do
      delete :destroy, id: @slider_top
    end

    assert_redirected_to slider_tops_path
  end
end
