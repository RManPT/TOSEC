class SystemsController < ApplicationController
    def new
        @system = System.new
        @types = SystemsType.all.map{|u| [ u.name, u.id ] }
    end
    def index
        @systems = System.all
      end
    def show
        @system = System.find(params[:id])
        
        @types = SystemsType.all
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
        @types = SystemsType.all.map{|u| [ u.name, u.id ] }
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
      params.require(:system).permit(:name, :abbreviation, :company, :systemsType_id, :dateRelease)
    end
end
