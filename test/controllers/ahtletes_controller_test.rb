require 'test_helper'

class AhtletesControllerTest < ActionController::TestCase
  setup do
    @ahtlete = ahtletes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ahtletes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ahtlete" do
    assert_difference('Ahtlete.count') do
      post :create, ahtlete: {  }
    end

    assert_redirected_to ahtlete_path(assigns(:ahtlete))
  end

  test "should show ahtlete" do
    get :show, id: @ahtlete
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ahtlete
    assert_response :success
  end

  test "should update ahtlete" do
    patch :update, id: @ahtlete, ahtlete: {  }
    assert_redirected_to ahtlete_path(assigns(:ahtlete))
  end

  test "should destroy ahtlete" do
    assert_difference('Ahtlete.count', -1) do
      delete :destroy, id: @ahtlete
    end

    assert_redirected_to ahtletes_path
  end
end
