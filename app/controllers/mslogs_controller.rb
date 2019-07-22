class MslogsController < ApplicationController
  before_action :set_mslogs, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json, only: :index
  def index
    @q        = Mslog.ransack(params[:q])
    @mslogs = @q.result
    respond_with @mslogs
  end

  def show
  end

  def new
  	@mslog = Mslog.new
  end

  def edit
  end

  def create
    # byebug
  	@mslog = Mslog.new(mslog_params)
    # byebug
  	if @mslog.save
      redirect_to @mslog
  	else
      # flash[:alert] = 'Create failed!'
  		render :new
  	end
  end

  def update
  	# @mslog = mslog.updeate(mslog_params)
  	# redirect_to mslog_path
    if @mslog.update(mslog_params)
      redirect_to @mslog, notice: 'Mslog is successfully update'
    else
      render action: edit
    end
  end

  def destroy
  	@mslog.destroy
  	redirect_to mslogs_url
  end

  private

  def set_mslogs
  	@mslog = Mslog.find(params[:id]) 
  end

  def mslog_params
  	params.require(:mslog).permit(:date, :machine_id, :description)
  end
end
