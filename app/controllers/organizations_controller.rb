class OrganizationsController < ApplicationController
	
	before_action :set_organization, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json, only: :index
  def index
    @q = Organization.ransack(params[:q])
    @organizations = @q.result
    # respond_with @organizations
  end

  def show
  end

  def new
  	@organization = Organization.new
  end

  def edit
  end

  def create
  	@organization = Organization.new(organization_params)
  	if @organization.save
  		redirect_to @organization
  	else 
  		render :new
  	end 
  end

  def update
  	# @organization = Organization.update(organization_params)
  	# redirect_to organization_path
    if @organization.update(organization_params)
      redirect_to @organization, notice: 'Organization is successfully update'
    else
      render action: edit
    end
  end

  def destroy
  	@organization.destroy
  	redirect_to organizations_url
  end

  private

  def set_organization
    @organization = Organization.find(params[:id])
  end

  def organization_params
    params.require(:organization).permit(:name, :address, :phone, :email)
  end

end
