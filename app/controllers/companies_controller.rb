class CompaniesController < ApplicationController
    before_action :find_company, only: [ :show, :edit, :update, :destroy]
    
    def index
        @companies = Company.all
    end

    def show
    end

    def new
        @company = Company.new
    end

    def create
        company = Company.create(company_params)
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def company_params
        params.require(:company).permit!
    end

    def find_company
        @company = Company.find(params[:id])
    end
end