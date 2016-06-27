require 'test_helper'

class SliderDeposControllerTest < ActionController::TestCase
  setup do
    @slider_depo = slider_depos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slider_depos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slider_depo" do
    assert_difference('SliderDepo.count') do
      post :create, slider_depo: { img: @slider_depo.img, link: @slider_depo.link }
    end

    assert_redirected_to slider_depo_path(assigns(:slider_depo))
  end

  test "should show slider_depo" do
    get :show, id: @slider_depo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slider_depo
    assert_response :success
  end

  test "should update slider_depo" do
    patch :update, id: @slider_depo, slider_depo: { img: @slider_depo.img, link: @slider_depo.link }
    assert_redirected_to slider_depo_path(assigns(:slider_depo))
  end

  test "should destroy slider_depo" do
    assert_difference('SliderDepo.count', -1) do
      delete :destroy, id: @slider_depo
    end

    assert_redirected_to slider_depos_path
  end
end
