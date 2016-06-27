require 'test_helper'

class CBellsControllerTest < ActionController::TestCase
  setup do
    @c_bell = c_bells(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_bells)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_bell" do
    assert_difference('CBell.count') do
      post :create, c_bell: { img: @c_bell.img, link: @c_bell.link }
    end

    assert_redirected_to c_bell_path(assigns(:c_bell))
  end

  test "should show c_bell" do
    get :show, id: @c_bell
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_bell
    assert_response :success
  end

  test "should update c_bell" do
    patch :update, id: @c_bell, c_bell: { img: @c_bell.img, link: @c_bell.link }
    assert_redirected_to c_bell_path(assigns(:c_bell))
  end

  test "should destroy c_bell" do
    assert_difference('CBell.count', -1) do
      delete :destroy, id: @c_bell
    end

    assert_redirected_to c_bells_path
  end
end
