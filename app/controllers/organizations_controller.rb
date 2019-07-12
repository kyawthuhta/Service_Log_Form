class OrganizationsController < ApplicationController
	
	before_action :set_organization, only: [:show, :edit, :update, :destroy]

  def index
  	@organizations = Organization.all
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
  		render new
  	end 
  end

  def update
  	@organization = Organization.update(organization_params)
  	redirect_to organization_path
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
