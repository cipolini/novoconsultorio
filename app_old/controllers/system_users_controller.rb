class SystemUsersController < ApplicationController
  # GET /system_users
  # GET /system_users.xml
  def index
    @system_users = SystemUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @system_users }
    end
  end

  # GET /system_users/1
  # GET /system_users/1.xml
  def show
    @system_user = SystemUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @system_user }
    end
  end

  # GET /system_users/new
  # GET /system_users/new.xml
  def new
    @system_user = SystemUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @system_user }
    end
  end

  # GET /system_users/1/edit
  def edit
    @system_user = SystemUser.find(params[:id])
  end

  # POST /system_users
  # POST /system_users.xml
  def create
    @system_user = SystemUser.new(params[:system_user])

    respond_to do |format|
      if @system_user.save
        format.html { redirect_to(@system_user, :notice => 'System user was successfully created.') }
        format.xml  { render :xml => @system_user, :status => :created, :location => @system_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @system_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /system_users/1
  # PUT /system_users/1.xml
  def update
    @system_user = SystemUser.find(params[:id])

    respond_to do |format|
      if @system_user.update_attributes(params[:system_user])
        format.html { redirect_to(@system_user, :notice => 'System user was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @system_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /system_users/1
  # DELETE /system_users/1.xml
  def destroy
    @system_user = SystemUser.find(params[:id])
    @system_user.destroy

    respond_to do |format|
      format.html { redirect_to(system_users_url) }
      format.xml  { head :ok }
    end
  end
end
