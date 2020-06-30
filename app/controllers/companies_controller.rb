class CompaniesController < ApplicationController
    
    before_action :find_company, only: [:show, :edit, :update, :destroy]
    
    def index
        @companies = Company.all
    end
  
    def show
    end
  
    def new
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
    
    def find_company
        @company = Company.find(params[:id])
    end
end