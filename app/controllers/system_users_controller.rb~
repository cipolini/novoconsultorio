# encoding: UTF-8
class SystemUsersController < ApplicationController
  before_filter :authenticate_administrador

  def index
    @users = SystemUser.find(:all)
  end

  def new
    @user = SystemUser.new();

  end

  def create
    @user = SystemUser.new(params[:system_user])
    if @user.save
      redirect_to system_users_path
    else
      render :action => "new"
    end
  end
  
end 
