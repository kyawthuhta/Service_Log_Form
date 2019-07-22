class MachinesController < ApplicationController
	before_action :set_machine, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json, only: :index
  def index
    @q        = Machine.ransack(params[:q])
    @machines = @q.result
    respond_with @machines
  end

  def show
  end

  def new
  	@machine = Machine.new
  end

  def edit    
  end

  def create
  	@machine = Machine.new(machine_params)
  	if @machine.save
  		redirect_to @machine
  	else
  		render :new
  	end
  end

  def update
  	# @machine = Machine.update(machine_params)
  	# redirect_to machine_path
    if @machine.update(machine_params)
      redirect_to @machine, notice: 'Machine is successfully update'
    else
      render action: edit
    end
  end

  def destroy
  	@machine.destroy
  	redirect_to machines_url, notice: 'Machine was successful destroy'
  end

  private

  def set_machine
  	@machine = Machine.find(params[:id])
  end

  # def machine_params
  # 	params.require(:machine).permit(:name, :mac, :cpu, :ram, :hdd, :optical_drive, :os, :purchase_date)
  # end

  def machine_params
    params.require(:machine).permit(:name, :mac, :cpu, :ram, :hdd, :optical_drive, :os, :purchase_date)
  end

end
