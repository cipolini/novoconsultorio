class EstadoCivilsController < ApplicationController
  # GET /estado_civils
  # GET /estado_civils.xml
  def index
    @estado_civils = EstadoCivil.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @estado_civils }
    end
  end

  # GET /estado_civils/1
  # GET /estado_civils/1.xml
  def show
    @estado_civil = EstadoCivil.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @estado_civil }
    end
  end

  # GET /estado_civils/new
  # GET /estado_civils/new.xml
  def new
    @estado_civil = EstadoCivil.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @estado_civil }
    end
  end

  # GET /estado_civils/1/edit
  def edit
    @estado_civil = EstadoCivil.find(params[:id])
  end

  # POST /estado_civils
  # POST /estado_civils.xml
  def create
    @estado_civil = EstadoCivil.new(params[:estado_civil])

    respond_to do |format|
      if @estado_civil.save
        format.html { redirect_to(@estado_civil, :notice => 'Estado civil was successfully created.') }
        format.xml  { render :xml => @estado_civil, :status => :created, :location => @estado_civil }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @estado_civil.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /estado_civils/1
  # PUT /estado_civils/1.xml
  def update
    @estado_civil = EstadoCivil.find(params[:id])

    respond_to do |format|
      if @estado_civil.update_attributes(params[:estado_civil])
        format.html { redirect_to(@estado_civil, :notice => 'Estado civil was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @estado_civil.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /estado_civils/1
  # DELETE /estado_civils/1.xml
  def destroy
    @estado_civil = EstadoCivil.find(params[:id])
    @estado_civil.destroy

    respond_to do |format|
      format.html { redirect_to(estado_civils_url) }
      format.xml  { head :ok }
    end
  end
end
