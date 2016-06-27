require 'test_helper'

class CDeposControllerTest < ActionController::TestCase
  setup do
    @c_depo = c_depos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_depos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_depo" do
    assert_difference('CDepo.count') do
      post :create, c_depo: { img: @c_depo.img, link: @c_depo.link }
    end

    assert_redirected_to c_depo_path(assigns(:c_depo))
  end

  test "should show c_depo" do
    get :show, id: @c_depo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_depo
    assert_response :success
  end

  test "should update c_depo" do
    patch :update, id: @c_depo, c_depo: { img: @c_depo.img, link: @c_depo.link }
    assert_redirected_to c_depo_path(assigns(:c_depo))
  end

  test "should destroy c_depo" do
    assert_difference('CDepo.count', -1) do
      delete :destroy, id: @c_depo
    end

    assert_redirected_to c_depos_path
  end
end
