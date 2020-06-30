class CompaniesController < ApplicationController
    
    before_action :find_company, only: [:show, :edit, :update, :destroy]
    
    def index
        @companies = Company.all
    end
  
    def show
    end
  
    def new
        @company = Company.new
    end
  
    def create
        @company = Company.create(company_params)
    end
  
    def edit
    end
  
    def update
    end
  
    def destroy
        @building.destroy
        redirect_to companies_path
    end

    private
    
    def find_company
        @company = Company.find(params[:id])
    end
end