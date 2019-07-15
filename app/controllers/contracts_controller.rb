class ContractsController < ApplicationController
	before_action :set_contracts, only: [:show, :edit, :update, :destroy]
  def index
  	@contracts = Contract.all
  end

  def show
  end

  def new
  	@contract = Contract.new
  end

  def edit
  end

  def create
  	@contract = Contract.new(contract_params)
  	if @contract.save
  		redirect_to @contract
  	else
  		render :new
  	end
  end

  def update
  	@contract = Contract.updeate(contract_params)
  	redirect_to contract_path
  end

  def destroy
  	@contracts.destroy
  	redirect_to contract_url
  end

  private

  def set_contracts
  	@contract = Contract.find(params[:id]) 
  end

  def contract_params
  	params.require(:contract).permit(:dated, :people_id, :service_from, :service_to, :preferred_date, :preferred_time)
  end

end
