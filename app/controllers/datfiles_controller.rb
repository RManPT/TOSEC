class DatfilesController < ApplicationController
    before_action :prepare_dependencies
    def index
        @datfile = Datfile.all
    end

    def show
        @datfile = Datfile.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            redirect_to(datfiles_path, :notice => 'Record not found')
 
    end

    def new
        @datfile = Datfile.new
    end

    def edit
        @datfile = Datfile.find(params[:id])
        rescue ActiveRecord::RecordNotFound
            redirect_to(datfiles_path, :notice => 'Record not found')
    end

    def create
        /raise params.inspect/
        @datfile = Datfile.new(datfile_params)
        
        if @datfile.save
            redirect_to @datfile
        else
            render 'new'
        end
    end

    def update
        @datfile = Datfile.find(params[:id])
        if @datfile.update(datfile_params)
          redirect_to @datfile
        else
          render 'edit'
        end
    end

    def destroy
        @datfile = Datfile.find(params[:id])
        @datfile.destroy    
        redirect_to datfiles_path
    end
    
    private
    def datfile_params
      params.require(:datfile).permit(:name, :readme, :collection_type_id, :system_id, :datstatus_id, :user_id)
    end

    def prepare_dependencies
        @collection_type=CollectionType.all
        @datstatuses=Datstatus.all
        @users=User.all
        @systems=System.all
        @companies=Company.all
        @system_types=SystemsType.all
    end
end
