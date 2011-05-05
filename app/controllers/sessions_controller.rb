# encoding: UTF-8
class SessionsController < ApplicationController

  def new
  end

  def create
    @user = SystemUser.find(:first, :conditions => ['login = ? and password = ?', params[:login], params[:password]])
    if @user
      if @user.tipo != "2"
        session[:logged] = @user
        redirect_to buscas_path
      else
        @medico = Medico.find(:first, :conditions => ['systemUser_id = ?', @user.id])
        if @medico
          session[:logged] = @user
          redirect_to buscas_path
        else
          redirect_to novo_medico_path(@user)
        end
      end
    else
        flash[:message] = "Usuário ou senha incorreto!"
        render :action => "new"
    end
  end

  def destroy
    session[:logged] = nil
    render :action => "new"
  end

end
