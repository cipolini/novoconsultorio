# encoding: UTF-8
class StatusSystemUsersController < ApplicationController
  # GET /status_system_users
  # GET /status_system_users.xml
  def index
    @status_system_users = StatusSystemUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @status_system_users }
    end
  end

  # GET /status_system_users/1
  # GET /status_system_users/1.xml
  def show
    @status_system_user = StatusSystemUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @status_system_user }
    end
  end

  # GET /status_system_users/new
  # GET /status_system_users/new.xml
  def new
    @status_system_user = StatusSystemUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @status_system_user }
    end
  end

  # GET /status_system_users/1/edit
  def edit
    @status_system_user = StatusSystemUser.find(params[:id])
  end

  # POST /status_system_users
  # POST /status_system_users.xml
  def create
    @status_system_user = StatusSystemUser.new(params[:status_system_user])

    respond_to do |format|
      if @status_system_user.save
        format.html { redirect_to(@status_system_user, :notice => 'Status system user was successfully created.') }
        format.xml  { render :xml => @status_system_user, :status => :created, :location => @status_system_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @status_system_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /status_system_users/1
  # PUT /status_system_users/1.xml
  def update
    @status_system_user = StatusSystemUser.find(params[:id])

    respond_to do |format|
      if @status_system_user.update_attributes(params[:status_system_user])
        format.html { redirect_to(@status_system_user, :notice => 'Status system user was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @status_system_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /status_system_users/1
  # DELETE /status_system_users/1.xml
  def destroy
    @status_system_user = StatusSystemUser.find(params[:id])
    @status_system_user.destroy

    respond_to do |format|
      format.html { redirect_to(status_system_users_url) }
      format.xml  { head :ok }
    end
  end
end
