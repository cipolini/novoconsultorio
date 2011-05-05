# encoding: UTF-8
class ConsultaController < ApplicationController
  before_filter :authenticate

  def list
    @consulta = Consultum.paginate :page => params[:page], :conditions => ["consulta_id = ? or id = ?" ,params[:id], params[:id]], :order => "id"
  end

  def retorno
    @consulta = Consultum.new
    @consultaPai = Consultum.find(params[:id])

    @consulta.paciente_id = @consultaPai.paciente_id

    if @consultaPai.consulta_id.nil?
      @consulta.consulta_id = @consultaPai.id
    else
      @consulta.consulta_id = @consultaPai.consulta_id
    end

  end
  
  def index
    @consulta = Consultum.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @consulta }
    end
  end

  # GET /consulta/1
  # GET /consulta/1.xml
  def show
#    @consulta = Consultum.find(params[:id])
    @fotos = Foto.find(:all)

    list
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @consulta }
    end
  end

  # GET /consulta/new
  # GET /consulta/new.xml
  def new
    @consulta = Consultum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @consulta }
    end
  end

  # GET /consulta/1/edit
  def edit
    @consulta = Consultum.find(params[:id])
  end

  # POST /consulta
  # POST /consulta.xml
  def create
    @consulta = Consultum.new(params[:consultum])

    @consulta.systemuser_id = session[:logged].id

    respond_to do |format|
      if @consulta.save
        format.html { redirect_to(@consulta, :notice => 'Requisicao efetuada com sucesso!') }
        format.xml  { render :xml => @consulta, :status => :created, :location => @consulta }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @consulta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /consulta/1
  # PUT /consulta/1.xml
  def update
    @consulta = Consultum.find(params[:id])

    respond_to do |format|
      if @consulta.update_attributes(params[:consultum])
        format.html { redirect_to buscas_path }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @consulta.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /consulta/1
  # DELETE /consulta/1.xml
  def destroy
    @consulta = Consultum.find(params[:id])
    @consulta.destroy

    respond_to do |format|
      format.html { redirect_to(consulta_url) }
      format.xml  { head :ok }
    end
  end
end
