class IndexController < ApplicationController
  before_filter :authenticate_user!
  # GET /index
  # GET /index.json
  def index
    @cashflowsPagar = Cashflow.where("receitadespesa = ?", "D")
    @cashflowsReceber = Cashflow.where("receitadespesa = ?", "R")
    #@cashflows = Cashflow.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cashflows }
    end
  end
end
