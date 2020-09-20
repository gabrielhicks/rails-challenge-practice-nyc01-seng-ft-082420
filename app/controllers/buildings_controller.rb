class BuildingsController < ApplicationController
    before_action :find_building, only: [ :show, :edit, :update, :destroy]

    def index
        @buildings = Building.all
    end

    def show
    end

    def new
        @building = Building.new
    end

    def create
        building = Building.create(building_params)
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def building_params
        params.require(:building).permit!
    end

    def find_building
        @building = Building.find(params[:id])
    end
end