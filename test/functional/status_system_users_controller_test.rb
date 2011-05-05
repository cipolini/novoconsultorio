require 'test_helper'

class StatusSystemUsersControllerTest < ActionController::TestCase
  setup do
    @status_system_user = status_system_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_system_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_system_user" do
    assert_difference('StatusSystemUser.count') do
      post :create, :status_system_user => @status_system_user.attributes
    end

    assert_redirected_to status_system_user_path(assigns(:status_system_user))
  end

  test "should show status_system_user" do
    get :show, :id => @status_system_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @status_system_user.to_param
    assert_response :success
  end

  test "should update status_system_user" do
    put :update, :id => @status_system_user.to_param, :status_system_user => @status_system_user.attributes
    assert_redirected_to status_system_user_path(assigns(:status_system_user))
  end

  test "should destroy status_system_user" do
    assert_difference('StatusSystemUser.count', -1) do
      delete :destroy, :id => @status_system_user.to_param
    end

    assert_redirected_to status_system_users_path
  end
end
