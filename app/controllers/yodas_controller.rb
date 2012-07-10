class YodasController < ApplicationController
  # GET /yodas
  # GET /yodas.json
  def index
    @yodas = Yoda.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @yodas }
    end
  end

  # GET /yodas/1
  # GET /yodas/1.json
  def show
    @yoda = Yoda.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @yoda }
    end
  end

  # GET /yodas/new
  # GET /yodas/new.json
  def new
    @yoda = Yoda.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @yoda }
    end
  end

  # GET /yodas/1/edit
  def edit
    @yoda = Yoda.find(params[:id])
  end

  # POST /yodas
  # POST /yodas.json
  def create
    @yoda = Yoda.new(params[:yoda])

    respond_to do |format|
      if @yoda.save
        format.html { redirect_to @yoda, notice: 'Yoda was successfully created.' }
        format.json { render json: @yoda, status: :created, location: @yoda }
      else
        format.html { render action: "new" }
        format.json { render json: @yoda.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /yodas/1
  # PUT /yodas/1.json
  def update
    @yoda = Yoda.find(params[:id])

    respond_to do |format|
      if @yoda.update_attributes(params[:yoda])
        format.html { redirect_to @yoda, notice: 'Yoda was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @yoda.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /yodas/1
  # DELETE /yodas/1.json
  def destroy
    @yoda = Yoda.find(params[:id])
    @yoda.destroy

    respond_to do |format|
      format.html { redirect_to yodas_url }
      format.json { head :ok }
    end
  end
end
