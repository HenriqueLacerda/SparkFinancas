class NcmsController < ApplicationController
  before_filter :authenticate_user!
  # GET /ncms
  # GET /ncms.json
  def index
    #@ncms = Ncm.all
    @ncms = Ncm.paginate(:page => params[:page], :per_page => 10)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @ncms }
    end
  end

  # GET /ncms/1
  # GET /ncms/1.json
  def show
    @ncm = Ncm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ncm }
    end
  end

  # GET /ncms/new
  # GET /ncms/new.json
  def new
    @ncm = Ncm.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ncm }
    end
  end

  # GET /ncms/1/edit
  def edit
    @ncm = Ncm.find(params[:id])
  end

  # POST /ncms
  # POST /ncms.json
  def create
    @ncm = Ncm.new(params[:ncm])

    respond_to do |format|
      if @ncm.save
        format.html { redirect_to @ncm, notice: 'Ncm was successfully created.' }
        format.json { render json: @ncm, status: :created, location: @ncm }
      else
        format.html { render action: "new" }
        format.json { render json: @ncm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /ncms/1
  # PUT /ncms/1.json
  def update
    @ncm = Ncm.find(params[:id])

    respond_to do |format|
      if @ncm.update_attributes(params[:ncm])
        format.html { redirect_to @ncm, notice: 'Ncm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ncm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ncms/1
  # DELETE /ncms/1.json
  def destroy
    @ncm = Ncm.find(params[:id])
    @ncm.destroy

    respond_to do |format|
      format.html { redirect_to ncms_url }
      format.json { head :no_content }
    end
  end
end
