class AvaluosController < ApplicationController
  # GET /avaluos
  # GET /avaluos.json
  def index
    @avaluos = Avaluo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @avaluos }
    end
  end

  # GET /avaluos/1
  # GET /avaluos/1.json
  def show
    @avaluo = Avaluo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @avaluo }
    end
  end

  # GET /avaluos/new
  # GET /avaluos/new.json
  def new
    @avaluo = Avaluo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @avaluo }
    end
  end

  # GET /avaluos/1/edit
  def edit
    @avaluo = Avaluo.find(params[:id])
  end

  # POST /avaluos
  # POST /avaluos.json
  def create
    @avaluo = Avaluo.new(params[:avaluo])

    respond_to do |format|
      if @avaluo.save
        format.html { redirect_to @avaluo, notice: 'Avaluo was successfully created.' }
        format.json { render json: @avaluo, status: :created, location: @avaluo }
      else
        format.html { render action: "new" }
        format.json { render json: @avaluo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /avaluos/1
  # PUT /avaluos/1.json
  def update
    @avaluo = Avaluo.find(params[:id])

    respond_to do |format|
      if @avaluo.update_attributes(params[:avaluo])
        format.html { redirect_to @avaluo, notice: 'Avaluo was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @avaluo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /avaluos/1
  # DELETE /avaluos/1.json
  def destroy
    @avaluo = Avaluo.find(params[:id])
    @avaluo.destroy

    respond_to do |format|
      format.html { redirect_to avaluos_url }
      format.json { head :ok }
    end
  end
end
