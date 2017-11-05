class SystemsController < ApplicationController
    def new
    end
    def index
        @systems = System.all
      end
    def show
        @system = System.find(params[:id])
    end
    
    def create
        @system = System.new(system_params)
   
        @system.save
        redirect_to @system
    end
   
  private
    def system_params
      params.require(:system).permit(:name, :abbreviation, :company, :typeSys)
    end
end
