require 'test_helper'

class BaseactivitiesControllerTest < ActionController::TestCase
  setup do
    @baseactivity = baseactivities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:baseactivities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create baseactivity" do
    assert_difference('Baseactivity.count') do
      post :create, baseactivity: {  }
    end

    assert_redirected_to baseactivity_path(assigns(:baseactivity))
  end

  test "should show baseactivity" do
    get :show, id: @baseactivity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @baseactivity
    assert_response :success
  end

  test "should update baseactivity" do
    patch :update, id: @baseactivity, baseactivity: {  }
    assert_redirected_to baseactivity_path(assigns(:baseactivity))
  end

  test "should destroy baseactivity" do
    assert_difference('Baseactivity.count', -1) do
      delete :destroy, id: @baseactivity
    end

    assert_redirected_to baseactivities_path
  end
end
