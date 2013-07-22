class CsosnsController < ApplicationController
  before_filter :authenticate_user!
  # GET /csosns
  # GET /csosns.json
  def index
    #@csosns = Csosn.all
    @csosns = Csosn.paginate(:page => params[:page], :per_page => 10)
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @csosns }
    end
  end

  # GET /csosns/1
  # GET /csosns/1.json
  def show
    @csosn = Csosn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @csosn }
    end
  end

  # GET /csosns/new
  # GET /csosns/new.json
  def new
    @csosn = Csosn.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @csosn }
    end
  end

  # GET /csosns/1/edit
  def edit
    @csosn = Csosn.find(params[:id])
  end

  # POST /csosns
  # POST /csosns.json
  def create
    @csosn = Csosn.new(params[:csosn])

    respond_to do |format|
      if @csosn.save
        format.html { redirect_to @csosn, notice: 'Csosn was successfully created.' }
        format.json { render json: @csosn, status: :created, location: @csosn }
      else
        format.html { render action: "new" }
        format.json { render json: @csosn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /csosns/1
  # PUT /csosns/1.json
  def update
    @csosn = Csosn.find(params[:id])

    respond_to do |format|
      if @csosn.update_attributes(params[:csosn])
        format.html { redirect_to @csosn, notice: 'Csosn was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @csosn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /csosns/1
  # DELETE /csosns/1.json
  def destroy
    @csosn = Csosn.find(params[:id])
    @csosn.destroy

    respond_to do |format|
      format.html { redirect_to csosns_url }
      format.json { head :no_content }
    end
  end
end
