require 'test_helper'

class BaseActivitiesControllerTest < ActionController::TestCase
  setup do
    @base_activity = base_activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:base_activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create base_activity" do
    assert_difference('BaseActivity.count') do
      post :create, base_activity: {  }
    end

    assert_redirected_to base_activity_path(assigns(:base_activity))
  end

  test "should show base_activity" do
    get :show, id: @base_activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @base_activity
    assert_response :success
  end

  test "should update base_activity" do
    patch :update, id: @base_activity, base_activity: {  }
    assert_redirected_to base_activity_path(assigns(:base_activity))
  end

  test "should destroy base_activity" do
    assert_difference('BaseActivity.count', -1) do
      delete :destroy, id: @base_activity
    end

    assert_redirected_to base_activities_path
  end
end
