class ConsultaController < ApplicationController
  # GET /consulta
  # GET /consulta.xml
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
    @consultum = Consultum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @consultum }
    end
  end

  # GET /consulta/new
  # GET /consulta/new.xml
  def new
    @consultum = Consultum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @consultum }
    end
  end

  # GET /consulta/1/edit
  def edit
    @consultum = Consultum.find(params[:id])
  end

  # POST /consulta
  # POST /consulta.xml
  def create
    @consultum = Consultum.new(params[:consultum])

    respond_to do |format|
      if @consultum.save
        format.html { redirect_to(@consultum, :notice => 'Consultum was successfully created.') }
        format.xml  { render :xml => @consultum, :status => :created, :location => @consultum }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @consultum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /consulta/1
  # PUT /consulta/1.xml
  def update
    @consultum = Consultum.find(params[:id])

    respond_to do |format|
      if @consultum.update_attributes(params[:consultum])
        format.html { redirect_to(@consultum, :notice => 'Consultum was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @consultum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /consulta/1
  # DELETE /consulta/1.xml
  def destroy
    @consultum = Consultum.find(params[:id])
    @consultum.destroy

    respond_to do |format|
      format.html { redirect_to(consulta_url) }
      format.xml  { head :ok }
    end
  end
end
