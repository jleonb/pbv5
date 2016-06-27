require 'test_helper'

class SliderPrincipalsControllerTest < ActionController::TestCase
  setup do
    @slider_principal = slider_principals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slider_principals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slider_principal" do
    assert_difference('SliderPrincipal.count') do
      post :create, slider_principal: { img: @slider_principal.img, link: @slider_principal.link }
    end

    assert_redirected_to slider_principal_path(assigns(:slider_principal))
  end

  test "should show slider_principal" do
    get :show, id: @slider_principal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slider_principal
    assert_response :success
  end

  test "should update slider_principal" do
    patch :update, id: @slider_principal, slider_principal: { img: @slider_principal.img, link: @slider_principal.link }
    assert_redirected_to slider_principal_path(assigns(:slider_principal))
  end

  test "should destroy slider_principal" do
    assert_difference('SliderPrincipal.count', -1) do
      delete :destroy, id: @slider_principal
    end

    assert_redirected_to slider_principals_path
  end
end
