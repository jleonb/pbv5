require 'test_helper'

class SliderServsControllerTest < ActionController::TestCase
  setup do
    @slider_serv = slider_servs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slider_servs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slider_serv" do
    assert_difference('SliderServ.count') do
      post :create, slider_serv: { img: @slider_serv.img, link: @slider_serv.link }
    end

    assert_redirected_to slider_serv_path(assigns(:slider_serv))
  end

  test "should show slider_serv" do
    get :show, id: @slider_serv
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slider_serv
    assert_response :success
  end

  test "should update slider_serv" do
    patch :update, id: @slider_serv, slider_serv: { img: @slider_serv.img, link: @slider_serv.link }
    assert_redirected_to slider_serv_path(assigns(:slider_serv))
  end

  test "should destroy slider_serv" do
    assert_difference('SliderServ.count', -1) do
      delete :destroy, id: @slider_serv
    end

    assert_redirected_to slider_servs_path
  end
end
