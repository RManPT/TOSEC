class SystemsController < ApplicationController
    def new
        @system = System.new
    end
    def index
        @systems = System.all
      end
    def show
        @company = Company.all
        @system = System.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        redirect_to(systems_path, :notice => 'Record not found')
    end
    
    def create
        @system = System.new(system_params)
        
        if @system.save
            redirect_to @system
          else
            render 'new'
          end
    end
    def edit
        @system = System.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            redirect_to(systems_path, :notice => 'Record not found')
      end
    def update
        @system = System.find(params[:id])
       
        if @system.update(system_params)
          redirect_to @system
        else
          render 'edit'
        end
      end
    
    def destroy
        @system = System.find(params[:id])
        @system.destroy
    
        redirect_to systems_path
    end
   
  private
    def system_params
      params.require(:system).permit(:name, :abbreviation, :company, :typeSys)
    end
end
