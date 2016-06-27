require 'test_helper'

class CServsControllerTest < ActionController::TestCase
  setup do
    @c_serv = c_servs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_servs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_serv" do
    assert_difference('CServ.count') do
      post :create, c_serv: { img: @c_serv.img, link: @c_serv.link }
    end

    assert_redirected_to c_serv_path(assigns(:c_serv))
  end

  test "should show c_serv" do
    get :show, id: @c_serv
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_serv
    assert_response :success
  end

  test "should update c_serv" do
    patch :update, id: @c_serv, c_serv: { img: @c_serv.img, link: @c_serv.link }
    assert_redirected_to c_serv_path(assigns(:c_serv))
  end

  test "should destroy c_serv" do
    assert_difference('CServ.count', -1) do
      delete :destroy, id: @c_serv
    end

    assert_redirected_to c_servs_path
  end
end
