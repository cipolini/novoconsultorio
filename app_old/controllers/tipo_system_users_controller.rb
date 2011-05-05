class TipoSystemUsersController < ApplicationController
  # GET /tipo_system_users
  # GET /tipo_system_users.xml
  def index
    @tipo_system_users = TipoSystemUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tipo_system_users }
    end
  end

  # GET /tipo_system_users/1
  # GET /tipo_system_users/1.xml
  def show
    @tipo_system_user = TipoSystemUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tipo_system_user }
    end
  end

  # GET /tipo_system_users/new
  # GET /tipo_system_users/new.xml
  def new
    @tipo_system_user = TipoSystemUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tipo_system_user }
    end
  end

  # GET /tipo_system_users/1/edit
  def edit
    @tipo_system_user = TipoSystemUser.find(params[:id])
  end

  # POST /tipo_system_users
  # POST /tipo_system_users.xml
  def create
    @tipo_system_user = TipoSystemUser.new(params[:tipo_system_user])

    respond_to do |format|
      if @tipo_system_user.save
        format.html { redirect_to(@tipo_system_user, :notice => 'Tipo system user was successfully created.') }
        format.xml  { render :xml => @tipo_system_user, :status => :created, :location => @tipo_system_user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tipo_system_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tipo_system_users/1
  # PUT /tipo_system_users/1.xml
  def update
    @tipo_system_user = TipoSystemUser.find(params[:id])

    respond_to do |format|
      if @tipo_system_user.update_attributes(params[:tipo_system_user])
        format.html { redirect_to(@tipo_system_user, :notice => 'Tipo system user was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tipo_system_user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_system_users/1
  # DELETE /tipo_system_users/1.xml
  def destroy
    @tipo_system_user = TipoSystemUser.find(params[:id])
    @tipo_system_user.destroy

    respond_to do |format|
      format.html { redirect_to(tipo_system_users_url) }
      format.xml  { head :ok }
    end
  end
end
