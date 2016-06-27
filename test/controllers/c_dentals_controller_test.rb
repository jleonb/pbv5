require 'test_helper'

class CDentalsControllerTest < ActionController::TestCase
  setup do
    @c_dental = c_dentals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:c_dentals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create c_dental" do
    assert_difference('CDental.count') do
      post :create, c_dental: {  }
    end

    assert_redirected_to c_dental_path(assigns(:c_dental))
  end

  test "should show c_dental" do
    get :show, id: @c_dental
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @c_dental
    assert_response :success
  end

  test "should update c_dental" do
    patch :update, id: @c_dental, c_dental: {  }
    assert_redirected_to c_dental_path(assigns(:c_dental))
  end

  test "should destroy c_dental" do
    assert_difference('CDental.count', -1) do
      delete :destroy, id: @c_dental
    end

    assert_redirected_to c_dentals_path
  end
end
