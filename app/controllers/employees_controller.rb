class EmployeesController < ApplicationController

before_action :find_employee, only: [:index, :show, :edit, :update, :destroy]

  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def find_employee
    @employee = Employee.find(params[:id])
  end

end
