class CashflowsController < ApplicationController
  before_filter :authenticate_user!
  # GET /cashflows
  # GET /cashflows.json
  def index
    #@cashflows = Cashflow.all
    @cashflows = Cashflow.paginate(:page => params[:page], :per_page => 10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cashflows }
    end
  end

  # GET /cashflows/1
  # GET /cashflows/1.json
  def show
    @cashflow = Cashflow.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cashflow }
    end
  end

  # GET /cashflows/new
  # GET /cashflows/new.json
  def new
    @cashflow = Cashflow.new
    @cashflow.receitadespesa = params[:receitadespesa];
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cashflow }
    end
  end
  
  # GET /cashflows/1/edit
  def edit
    @cashflow = Cashflow.find(params[:id])
  end

  # POST /cashflows
  # POST /cashflows.json
  def create
    @cashflow = Cashflow.new(params[:cashflow])
    @cashflow.category_id = params[:category_id]
    @cashflow.account_id = params[:account_id]
    respond_to do |format|
      if @cashflow.save
        format.html { redirect_to @cashflow, notice: 'Cashflow was successfully created.' }
        format.json { render json: @cashflow, status: :created, location: @cashflow }
      else
        format.html { render action: "new" }
        format.json { render json: @cashflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cashflows/1
  # PUT /cashflows/1.json
  def update
    @cashflow = Cashflow.find(params[:id])
    @cashflow.category_id = params[:category_id]
    @cashflow.account_id = params[:account_id]
    
    respond_to do |format|
      if @cashflow.update_attributes(params[:cashflow])
        format.html { redirect_to @cashflow, notice: 'Cashflow was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cashflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cashflows/1
  # DELETE /cashflows/1.json
  def destroy
    @cashflow = Cashflow.find(params[:id])
    @cashflow.destroy

    respond_to do |format|
      format.html { redirect_to cashflows_url }
      format.json { head :no_content }
    end
  end
  
  
  def buscar_company 
        render :json => Cashflow.all    
    rescue RuntimeError  
        render :json => ["", "cep nao encontrado", "", "", ""].to_json  
    end
  
end
