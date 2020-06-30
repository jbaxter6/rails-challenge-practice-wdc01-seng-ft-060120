class BuildingsController < ApplicationController

    before_action :find_building, only: [:show, :update]

    def index
        @buildings = Building.all
    end
  
    def show
    end
  
    def edit
    end
  
    def update
    end
  
    def delete
    end

    private

    def find_building
        @building = Building.find(params[:id])
    end
end