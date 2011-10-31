class OrcsController < ApplicationController
  # GET /orcs
  # GET /orcs.json
  def index
    @orcs = Orc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @orcs }
    end
  end

  # GET /orcs/1
  # GET /orcs/1.json
  def show
    @orc = Orc.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @orc }
    end
  end

  # GET /orcs/new
  # GET /orcs/new.json
  def new
    @orc = Orc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @orc }
    end
  end

  # GET /orcs/1/edit
  def edit
    @orc = Orc.find(params[:id])
  end

  # POST /orcs
  # POST /orcs.json
  def create
    @orc = Orc.new(params[:orc])

    respond_to do |format|
      if @orc.save
        format.html { redirect_to @orc, notice: 'Orc was successfully created.' }
        format.json { render json: @orc, status: :created, location: @orc }
      else
        format.html { render action: "new" }
        format.json { render json: @orc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /orcs/1
  # PUT /orcs/1.json
  def update
    @orc = Orc.find(params[:id])

    respond_to do |format|
      if @orc.update_attributes(params[:orc])
        format.html { redirect_to @orc, notice: 'Orc was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @orc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orcs/1
  # DELETE /orcs/1.json
  def destroy
    @orc = Orc.find(params[:id])
    @orc.destroy

    respond_to do |format|
      format.html { redirect_to orcs_url }
      format.json { head :ok }
    end
  end
end
