class SvclogsController < ApplicationController
  before_action :set_svclogs, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json, only: :index
  def index
    @q        = Svclog.ransack(params[:q])
    @svclogs = @q.result
    respond_with @svclogs
  end

  def show
  end

  def new
  	@svclog = Svclog.new
  end

  def edit
  end

  def create
    # byebug
  	@svclog = Svclog.new(svclog_params)
  	if @svclog.save
      redirect_to @svclog
  	else
      # flash[:alert] = 'Create failed!'
  		render :new
  	end
  end

  def update
    if @svclog.update(svclog_params)
      redirect_to @svclog, notice: 'Svclog is successfully update'
    else
      render action: edit
    end
  end

  def destroy
  	@svclog.destroy
  	redirect_to svclogs_url
  end

  private

  def set_svclogs
  	@svclog = Svclog.find(params[:id]) 
  end

  def svclog_params
  	params.require(:svclog).permit(:organization_id, :department, :location)
  end
end
