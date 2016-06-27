require 'test_helper'

class EstandarsControllerTest < ActionController::TestCase
  setup do
    @estandar = estandars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estandars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estandar" do
    assert_difference('Estandar.count') do
      post :create, estandar: { caluga: @estandar.caluga, categoria: @estandar.categoria, contacto: @estandar.contacto, correo: @estandar.correo, descripcion: @estandar.descripcion, direccion: @estandar.direccion, facebook: @estandar.facebook, img1: @estandar.img1, img2: @estandar.img2, img3: @estandar.img3, img4: @estandar.img4, img5: @estandar.img5, instagram: @estandar.instagram, mapa: @estandar.mapa, n_contrato: @estandar.n_contrato, nombre: @estandar.nombre, telefono: @estandar.telefono, twitter: @estandar.twitter }
    end

    assert_redirected_to estandar_path(assigns(:estandar))
  end

  test "should show estandar" do
    get :show, id: @estandar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estandar
    assert_response :success
  end

  test "should update estandar" do
    patch :update, id: @estandar, estandar: { caluga: @estandar.caluga, categoria: @estandar.categoria, contacto: @estandar.contacto, correo: @estandar.correo, descripcion: @estandar.descripcion, direccion: @estandar.direccion, facebook: @estandar.facebook, img1: @estandar.img1, img2: @estandar.img2, img3: @estandar.img3, img4: @estandar.img4, img5: @estandar.img5, instagram: @estandar.instagram, mapa: @estandar.mapa, n_contrato: @estandar.n_contrato, nombre: @estandar.nombre, telefono: @estandar.telefono, twitter: @estandar.twitter }
    assert_redirected_to estandar_path(assigns(:estandar))
  end

  test "should destroy estandar" do
    assert_difference('Estandar.count', -1) do
      delete :destroy, id: @estandar
    end

    assert_redirected_to estandars_path
  end
end
