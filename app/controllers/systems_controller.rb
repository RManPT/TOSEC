class SystemsController < ApplicationController
  before_action :prepare_form_data
  def new
        @system = System.new
        prepare_form_data
    end
    def index
        @systems = System.order("name").page(params[:page]).per(20)
      end
    def show
        @system = System.find(params[:id])
    rescue ActiveRecord::RecordNotFound
        redirect_to(systems_path, :notice => 'Record not found')
    end
    
    def create
        @system = System.new(system_params)
        
        if @system.save
            redirect_to @system
          else
            prepare_form_data
            render 'new'
          end
    end
    def edit
        @system = System.find(params[:id])
        prepare_form_data
        rescue ActiveRecord::RecordNotFound
            redirect_to(systems_path, :notice => 'Record not found')
      end
    def update
        @system = System.find(params[:id])
       
        if @system.update(system_params)
          redirect_to @system
        else
          prepare_form_data
          render 'edit'
        end
      end
    
    def destroy
        @system = System.find(params[:id])
        @system.destroy
        redirect_to systems_path
    end
    
  private
    def prepare_form_data
      @types = SystemsType.all
      @companies = Company.all
    end
    def system_params
      params.require(:system).permit(:name, :abbreviation, :company_id, :systemsType_id, :dateRelease)
    end
end
