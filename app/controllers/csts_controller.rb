class CstsController < ApplicationController
  before_filter :authenticate_user!
  # GET /csts
  # GET /csts.json
  def index
    #@csts = Cst.all
    @csts = Cst.paginate(:page => params[:page], :per_page => 10)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @csts }
    end
  end

  # GET /csts/1
  # GET /csts/1.json
  def show
    @cst = Cst.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cst }
    end
  end

  # GET /csts/new
  # GET /csts/new.json
  def new
    @cst = Cst.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cst }
    end
  end

  # GET /csts/1/edit
  def edit
    @cst = Cst.find(params[:id])
  end

  # POST /csts
  # POST /csts.json
  def create
    @cst = Cst.new(params[:cst])

    respond_to do |format|
      if @cst.save
        format.html { redirect_to @cst, notice: 'Cst was successfully created.' }
        format.json { render json: @cst, status: :created, location: @cst }
      else
        format.html { render action: "new" }
        format.json { render json: @cst.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /csts/1
  # PUT /csts/1.json
  def update
    @cst = Cst.find(params[:id])

    respond_to do |format|
      if @cst.update_attributes(params[:cst])
        format.html { redirect_to @cst, notice: 'Cst was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cst.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /csts/1
  # DELETE /csts/1.json
  def destroy
    @cst = Cst.find(params[:id])
    @cst.destroy

    respond_to do |format|
      format.html { redirect_to csts_url }
      format.json { head :no_content }
    end
  end
end
