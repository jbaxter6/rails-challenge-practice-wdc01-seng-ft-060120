class OfficesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @office = Office.new
  end

  def create
    byebug
    
  end

  def edit
  end

  def update
  end

  def delete
  end

  private
  def office_params
    params.require(:company).permit(:floors, :company_id, :building_id) 
  end
end
