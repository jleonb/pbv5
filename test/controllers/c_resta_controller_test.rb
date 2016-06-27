require 'test_helper'

class CRestaControllerTest < ActionController::TestCase
  setup do
    @c_restum = c_resta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_resta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_restum" do
    assert_difference('CRestum.count') do
      post :create, c_restum: { img: @c_restum.img, link: @c_restum.link }
    end

    assert_redirected_to c_restum_path(assigns(:c_restum))
  end

  test "should show c_restum" do
    get :show, id: @c_restum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_restum
    assert_response :success
  end

  test "should update c_restum" do
    patch :update, id: @c_restum, c_restum: { img: @c_restum.img, link: @c_restum.link }
    assert_redirected_to c_restum_path(assigns(:c_restum))
  end

  test "should destroy c_restum" do
    assert_difference('CRestum.count', -1) do
      delete :destroy, id: @c_restum
    end

    assert_redirected_to c_resta_path
  end
end
