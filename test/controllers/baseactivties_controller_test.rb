require 'test_helper'

class BaseactivtiesControllerTest < ActionController::TestCase
  setup do
    @baseactivty = baseactivties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:baseactivties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baseactivty" do
    assert_difference('Baseactivty.count') do
      post :create, baseactivty: {  }
    end

    assert_redirected_to baseactivty_path(assigns(:baseactivty))
  end

  test "should show baseactivty" do
    get :show, id: @baseactivty
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baseactivty
    assert_response :success
  end

  test "should update baseactivty" do
    patch :update, id: @baseactivty, baseactivty: {  }
    assert_redirected_to baseactivty_path(assigns(:baseactivty))
  end

  test "should destroy baseactivty" do
    assert_difference('Baseactivty.count', -1) do
      delete :destroy, id: @baseactivty
    end

    assert_redirected_to baseactivties_path
  end
end
