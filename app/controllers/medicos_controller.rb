class MedicosController < ApplicationController
  # GET /medicos
  # GET /medicos.xml
  def index
    @medicos = Medico.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @medicos }
    end
  end

  # GET /medicos/1
  # GET /medicos/1.xml
  def show
    @medico = Medico.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @medico }
    end
  end

  # GET /medicos/new
  # GET /medicos/new.xml
  def new
    @medico = Medico.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @medico }
    end
  end

  def novo

    @systemUser = SystemUser.find(params[:id])
    @medico = Medico.new
    @medico.login = @systemUser.login

  end

  def edit
    @medico = Medico.find(params[:id])
  end

  # POST /medicos
  # POST /medicos.xml
  def create
    @medico = Medico.new(params[:medico])
    @systemUser = SystemUser.find(:first, :conditions => [ 'login = ?', @medico.login ])
    @medico.systemUser_id = @systemUser.id

    respond_to do |format|
      if @medico.save
        format.html { redirect_to buscas_path }
        format.xml  { render :xml => @medico, :status => :created, :location => @medico }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @medico.errors, :status => :unprocessable_entity }
      end
    end
    session[:logged] = @systemUser
  end

  # PUT /medicos/1
  # PUT /medicos/1.xml
  def update
    @medico = Medico.find(params[:id])

    respond_to do |format|
      if @medico.update_attributes(params[:medico])
        format.html { redirect_to(@medico, :notice => 'Medico was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @medico.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /medicos/1
  # DELETE /medicos/1.xml
  def destroy
    @medico = Medico.find(params[:id])
    @medico.destroy

    respond_to do |format|
      format.html { redirect_to(medicos_url) }
      format.xml  { head :ok }
    end
  end
end
