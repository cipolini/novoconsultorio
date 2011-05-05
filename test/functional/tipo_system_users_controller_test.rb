require 'test_helper'

class TipoSystemUsersControllerTest < ActionController::TestCase
  setup do
    @tipo_system_user = tipo_system_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_system_users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_system_user" do
    assert_difference('TipoSystemUser.count') do
      post :create, :tipo_system_user => @tipo_system_user.attributes
    end

    assert_redirected_to tipo_system_user_path(assigns(:tipo_system_user))
  end

  test "should show tipo_system_user" do
    get :show, :id => @tipo_system_user.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tipo_system_user.to_param
    assert_response :success
  end

  test "should update tipo_system_user" do
    put :update, :id => @tipo_system_user.to_param, :tipo_system_user => @tipo_system_user.attributes
    assert_redirected_to tipo_system_user_path(assigns(:tipo_system_user))
  end

  test "should destroy tipo_system_user" do
    assert_difference('TipoSystemUser.count', -1) do
      delete :destroy, :id => @tipo_system_user.to_param
    end

    assert_redirected_to tipo_system_users_path
  end
end
