# encoding: UTF-8
class SystemsController < ApplicationController

  before_filter :administrador_authenticate

  def index
    @users = User.all
  end

  def new
    @user = User.new
    @user.system_id = session[:logged].id
  end

  def create
    @user = User.new(params[:user])
    @user.system_id = session[:logged].id
    if @user.save
      redirect_to users_path
    else
      render :action => "new"
    end
  end

  def destroy
    @system = System.find(params[:id])
    @system.destroy

    respond_to do |format|
      format.html { redirect_to(systems_url) }
      format.xml  { head :ok }
    end
  end
end
