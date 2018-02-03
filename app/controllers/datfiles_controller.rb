class DatfilesController < ApplicationController
    before_action :prepare_dependencies
    before_action :prepare_form_data

    def index
        @datfiles = Datfile.order("name").page(params[:page]).per(20)
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
        respond_to do |format|
            format.html { redirect_to datfiles_path }
            format.js { head :no_content }
           end
    end
    
    private
    def datfile_params
      params.require(:datfile).permit(:name, :readme, :collection_type_id, :system_id, :datstatus_id, :user_id, :file)
    end

    def prepare_dependencies
        @collection_type=CollectionType.all
        @datstatuses=Datstatus.all
        @users=User.all
        @systems=System.all
        @companies=Company.all
        @system_types=SystemsType.all
    end

    def prepare_form_data
        if(user_signed_in?)
           @links = Grole.where(user_id: current_user.id).joins("inner join routes r on groles.route_id = r.id").order("r.priority asc, name")
        end
    end
end
