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

        @company = Company.new(company_params)
        if @company.save
            params[:company][:offices_attributes].each do |index, building|
                building[:offices].each do |floor|
                    if floor != ""
                        Office.create(floor:floor,building_id:building[:id],company_id:@company.id)
                    end
                end
            end
            
        end
        redirect_to company_path(@company)
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

    def company_params
        params.require(:company).permit(:name) 
    end
end