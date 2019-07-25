class ContractsController < ApplicationController
	before_action :set_contracts, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json, only: :index
  def index
  	# @contracts = Contract.all
    @q        = Contract.ransack(params[:q])
    @contracts = @q.result
    respond_with @contracts
  end

  def show
  end

  def new
  	@contract = Contract.new
    @contract.cms.build
  end

  def edit
  end

  def create
    # byebug
  	@contract = Contract.new(contract_params)
    # byebug
  	if @contract.save
      redirect_to @contract, notice: 'Contract is successfully creatd'
  	else
      # flash[:alert] = 'Create failed!'
  		render :new
  	end
  end

  def update
  	# @contract = Contract.updeate(contract_params)
  	# redirect_to contract_path
    if @contract.update(contract_params)
      redirect_to @contract, notice: 'Contract is successfully updated'
    else
      render action: edit
    end
  end

  def destroy
  	@contract.destroy
  	redirect_to contracts_url
  end

  private

  def set_contracts
  	@contract = Contract.find(params[:id]) 
  end

  def contract_params
  	params.require(:contract).permit(
      :dated, :person_id, :service_from, :service_to, 
      :preferred_date, :preferred_time,
      cms_attributes: [
        :id, :_destroy, :contract_id, :machine_id,
        machine_attributes: [
          :id, :name, :mac, :cpu, :ram, 
          :hdd, :optical_drive, :os, :purchase_date
        ]
      ]
    )
  end

end
