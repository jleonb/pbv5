require 'test_helper'

class EstandarDestacadosControllerTest < ActionController::TestCase
  setup do
    @estandar_destacado = estandar_destacados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estandar_destacados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estandar_destacado" do
    assert_difference('EstandarDestacado.count') do
      post :create, estandar_destacado: { img: @estandar_destacado.img, link: @estandar_destacado.link }
    end

    assert_redirected_to estandar_destacado_path(assigns(:estandar_destacado))
  end

  test "should show estandar_destacado" do
    get :show, id: @estandar_destacado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estandar_destacado
    assert_response :success
  end

  test "should update estandar_destacado" do
    patch :update, id: @estandar_destacado, estandar_destacado: { img: @estandar_destacado.img, link: @estandar_destacado.link }
    assert_redirected_to estandar_destacado_path(assigns(:estandar_destacado))
  end

  test "should destroy estandar_destacado" do
    assert_difference('EstandarDestacado.count', -1) do
      delete :destroy, id: @estandar_destacado
    end

    assert_redirected_to estandar_destacados_path
  end
end
