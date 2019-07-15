class PeopleController < ApplicationController
	before_action :set_response, only: [:show, :edit, :update, :destroy]
  
  def index
  	@people = Person.all
  end

  def show
  end

  def new
  	@person = Person.new
  end

  def edit
  end

  def create
  	@person = Person.new(person_params)
  	if @person.save
  		redirect_to @person
  	else
  		render :new
  	end
  end

  def update
  	@person = Person.update(person_params)
  	redirect_to people_path
  end

  def destroy
  	@person.destroy
  	redirect_to people_url
  end
  private
  def set_response
  	@person = Person.find(params[:id])
  end

  def person_params
  	params.require(:person).permit(:name, :phone, :designation, :organization)
  end
end
