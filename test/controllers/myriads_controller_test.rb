require 'test_helper'

class MyriadsControllerTest < ActionController::TestCase
  setup do
    @myriad = myriads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:myriads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create myriad" do
    assert_difference('Myriad.count') do
      post :create, myriad: {  }
    end

    assert_redirected_to myriad_path(assigns(:myriad))
  end

  test "should show myriad" do
    get :show, id: @myriad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myriad
    assert_response :success
  end

  test "should update myriad" do
    patch :update, id: @myriad, myriad: {  }
    assert_redirected_to myriad_path(assigns(:myriad))
  end

  test "should destroy myriad" do
    assert_difference('Myriad.count', -1) do
      delete :destroy, id: @myriad
    end

    assert_redirected_to myriads_path
  end
end
