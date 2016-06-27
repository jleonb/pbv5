require 'test_helper'

class VermasControllerTest < ActionController::TestCase
  setup do
    @verma = vermas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vermas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create verma" do
    assert_difference('Verma.count') do
      post :create, verma: {  }
    end

    assert_redirected_to verma_path(assigns(:verma))
  end

  test "should show verma" do
    get :show, id: @verma
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @verma
    assert_response :success
  end

  test "should update verma" do
    patch :update, id: @verma, verma: {  }
    assert_redirected_to verma_path(assigns(:verma))
  end

  test "should destroy verma" do
    assert_difference('Verma.count', -1) do
      delete :destroy, id: @verma
    end

    assert_redirected_to vermas_path
  end
end
